import CoreImage
import Foundation

// qr.swift <url> <out.png> [scale] [logo.png]
// With a logo, the code switches to "H" correction so the covered modules can
// be reconstructed. The self-check at the bottom decodes the finished PNG, so
// a logo that covers too much fails the run instead of shipping unscannable.
let url = CommandLine.arguments[1]
let out = URL(fileURLWithPath: CommandLine.arguments[2])
let scale = CommandLine.arguments.count > 3 ? Double(CommandLine.arguments[3])! : 20
let logoPath = CommandLine.arguments.count > 4 ? CommandLine.arguments[4] : nil

let f = CIFilter(name: "CIQRCodeGenerator")!
f.setValue(url.data(using: .utf8), forKey: "inputMessage")
f.setValue(logoPath == nil ? "M" : "H", forKey: "inputCorrectionLevel")  // ponytail: M is plenty for a screen/flyer; "H" if it gets printed small or scuffed
let code = f.outputImage!.transformed(by: CGAffineTransform(scaleX: scale, y: scale))

// 4-module quiet zone on white — spec minimum, and CIQRCodeGenerator only gives 1
let pad = scale * 4
let canvas = code.extent.insetBy(dx: -pad, dy: -pad)
var img = code.composited(over: CIImage(color: .white).cropped(to: canvas))

if let logoPath {
    guard let raw = CIImage(contentsOf: URL(fileURLWithPath: logoPath)) else {
        fatalError("cannot read logo at \(logoPath)")
    }
    // ponytail: fixed 16% trim of the mark's own white border, matched to
    // build/img/logo-mark.png. Detect the ink bounds if a logo without a
    // baked-in margin ever gets passed in.
    let logo = raw.cropped(
        to: raw.extent.insetBy(dx: raw.extent.width * 0.16, dy: raw.extent.height * 0.16))
    // 22% of the code's width. H correction tolerates ~30% loss; the extra
    // margin covers the white plate around the mark and printer smudge.
    let box = (code.extent.width * 0.22).rounded()
    let plate = (box + scale * 2).rounded()
    let fit = box / max(logo.extent.width, logo.extent.height)
    let centre = CGPoint(x: canvas.midX, y: canvas.midY)

    let scaled = logo.transformed(by: CGAffineTransform(scaleX: fit, y: fit))
    let placed = scaled.transformed(
        by: CGAffineTransform(
            translationX: centre.x - scaled.extent.midX,
            y: centre.y - scaled.extent.midY))
    let white = CIImage(color: .white).cropped(
        to: CGRect(
            x: centre.x - plate / 2, y: centre.y - plate / 2, width: plate, height: plate))

    img = placed.composited(over: white).composited(over: img)
}

let ctx = CIContext()
try ctx.writePNGRepresentation(of: img, to: out,
    format: .RGBA8, colorSpace: CGColorSpaceCreateDeviceRGB())

// self-check: read the PNG back and decode it
let read = CIImage(contentsOf: out)!
let found = CIDetector(ofType: CIDetectorTypeQRCode, context: nil, options: nil)!
    .features(in: read)
    .compactMap { ($0 as? CIQRCodeFeature)?.messageString }
assert(found == [url], "QR decoded as \(found), expected \(url)")
print("wrote \(out.path) — \(Int(img.extent.width))x\(Int(img.extent.height)) — decodes to \(found[0])")
