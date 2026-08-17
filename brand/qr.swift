import CoreImage
import Foundation

let url = CommandLine.arguments[1]
let out = URL(fileURLWithPath: CommandLine.arguments[2])
let scale = CommandLine.arguments.count > 3 ? Double(CommandLine.arguments[3])! : 20

let f = CIFilter(name: "CIQRCodeGenerator")!
f.setValue(url.data(using: .utf8), forKey: "inputMessage")
f.setValue("M", forKey: "inputCorrectionLevel")  // ponytail: M is plenty for a screen/flyer; "H" if it gets printed small or scuffed
let code = f.outputImage!.transformed(by: CGAffineTransform(scaleX: scale, y: scale))

// 4-module quiet zone on white — spec minimum, and CIQRCodeGenerator only gives 1
let pad = scale * 4
let canvas = code.extent.insetBy(dx: -pad, dy: -pad)
let img = code.composited(over: CIImage(color: .white).cropped(to: canvas))

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
