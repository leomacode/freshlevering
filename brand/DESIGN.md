---
name: S&A Freshlevering
colors:
  # ---- brand core (from card.jpg — these three are the brand, do not drift)
  primary: '#1b4d2e'              # deep forest green
  on-primary: '#ffffff'           # 9.78:1 AA
  accent: '#4caf2f'               # fresh leaf green — FILL ONLY, never text
  on-accent: '#0d2a17'            # 5.50:1 AA — accent needs DARK text, not white
  whatsapp: '#25d366'             # WhatsApp buttons only, nowhere else
  on-whatsapp: '#08331b'          # 7.06:1 AA — white on WhatsApp green is 1.98, fails

  # ---- surfaces
  surface: '#f7f9f5'              # page background
  surface-container: '#ffffff'    # cards, rows, elevated things
  surface-container-low: '#f0f5f0'# sticky bars, subtle bands
  surface-inverse: '#1b4d2e'      # dark green sections and footer
  on-surface-inverse: '#ffffff'

  # ---- text
  on-surface: '#1f2421'           # body and headings — 14.88:1 AA
  on-surface-muted: '#4a5750'     # units, captions, secondary — 7.16:1 AA
  on-surface-disabled: '#6b7670'  # 4.45:1, large text and disabled rows only

  # ---- lines
  outline: '#c1c9bf'              # 1.60:1 — decorative borders ONLY, never text
  outline-strong: '#8e998c'       # borders that must be perceivable

  # ---- accents on dark green
  accent-on-dark: '#93e27a'       # 6.24:1 on primary — for text/icons on green

  # ---- status: dagprijs
  status-day: '#e4f5df'
  on-status-day: '#1b4d2e'        # 8.58:1 AA
  # ---- status: seizoen
  status-season: '#fff3d6'
  on-status-season: '#6b4a00'     # 7.31:1 AA
  # ---- status: uitverkocht
  status-out: '#ffdad6'
  on-status-out: '#93000a'        # 7.24:1 AA

  # ---- focus
  focus-ring: '#2e7d46'           # 4.79:1 on surface — 3px, 2px offset
typography:
  display-lg:
    fontFamily: Lora
    fontSize: 48px
    fontWeight: '600'
    lineHeight: 56px
    letterSpacing: -0.02em
  display-lg-mobile:
    fontFamily: Lora
    fontSize: 32px
    fontWeight: '600'
    lineHeight: 40px
  headline-md:
    fontFamily: Lora
    fontSize: 32px
    fontWeight: '500'
    lineHeight: 40px
  headline-md-mobile:
    fontFamily: Lora
    fontSize: 24px
    fontWeight: '500'
    lineHeight: 32px
  headline-sm:
    fontFamily: Lora
    fontSize: 24px
    fontWeight: '500'
    lineHeight: 32px
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: 28px
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  price:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '700'
    lineHeight: 24px
    fontVariantNumeric: tabular-nums
  label-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '600'
    lineHeight: 20px
    letterSpacing: 0.01em
  label-sm:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '500'
    lineHeight: 16px
  caption-btw:
    fontFamily: Inter
    fontSize: 11px
    fontWeight: '400'
    lineHeight: 14px
rounded:
  sm: 0.5rem      # 8px  — chips, small buttons
  DEFAULT: 0.875rem  # 14px — THE house radius: cards, inputs, rows, buttons
  lg: 1.25rem     # 20px — hero panels, large feature blocks
  full: 9999px    # pills, avatars, round icon buttons
spacing:
  unit: 8px
  container-max: 1200px
  gutter: 24px
  margin-mobile: 16px
  margin-desktop: 40px
  section-gap: 80px
  section-gap-mobile: 48px
  tap-target-min: 44px
  button-height: 48px
shadow:
  card: 0px 4px 20px rgba(27, 77, 46, 0.08)
  card-hover: 0px 8px 28px rgba(27, 77, 46, 0.14)
  bar: 0px -4px 20px rgba(0, 0, 0, 0.18)
---

## Brand & Style

A premium local greengrocer that also supplies professional kitchens. Horeca
and caterers are the primary audience, consumers the secondary one, and the
design has to serve a chef scanning a hundred line items and a household ordering a
crate — without feeling like a supermarket, a marketplace or a SaaS dashboard.

The visual style is clean and tactile: heavy whitespace, organic curved
dividers that echo leaves and fields, and bright high-key produce photography.
The emotional target is trust, vitality and effortlessness. Photography is
always daylight on a white ground, never dark or moody.

## Colors

Three colours carry the brand, taken from the business card. **Deep forest
green `#1B4D2E`** is the authoritative base: headers, footers, primary buttons,
dark sections. **Fresh leaf green `#4CAF2F`** is energy, used sparingly for
accents, active states and highlights. **WhatsApp green `#25D366`** appears on
WhatsApp actions and nowhere else — the moment it leaks onto a non-WhatsApp
button it stops signalling anything.

Backgrounds use off-white `#F7F9F5` rather than pure white, so that white
cards can layer on top and read as elevated. Text is charcoal `#1F2421`, not
black, for an editorial rather than harsh feel.

### Three contrast traps, measured

These are counter-intuitive and cause most of the accessibility failures:

1. **White text on fresh leaf green is 2.81:1 — it fails.** Every bright green
   button must use dark ink `#0D2A17` (5.50:1), never white.
2. **White text on WhatsApp green is 1.98:1 — it fails badly**, even though
   WhatsApp's own branding does exactly that. Use `#08331B` (7.06:1).
3. **Fresh leaf green as text or a thin icon on the off-white background is
   2.65:1 — it fails.** Leaf green is a fill colour only. For green text on a
   light ground use forest green (9.23:1); for green on a dark green ground use
   `accent-on-dark` `#93E27A` (6.24:1).

Every token pair in the frontmatter is annotated with its measured ratio.
Anything at or above 4.5:1 is safe for body text; 3:1 items are marked and
restricted to large text, borders or decoration.

Never signal a state by colour alone. Every status carries a text label —
"Dagprijs", "Seizoen", "Uitverkocht" — not just a coloured pill.

## Typography

**Lora** (serif) for headings, **Inter** (sans) for everything else. The scale
matters more than the pairing: the first Stitch output collapsed every heading
to body size, which destroyed the hierarchy on the page.

Hero headline is `display-lg` at 48px desktop, 32px mobile. Section headings
are `headline-md` at 32px desktop, 24px mobile, and must always be visibly
larger than the paragraph beneath them. Body is 16px, the paragraph under the
hero headline 18px.

Prices use the dedicated `price` token — 18px Inter bold with **tabular
figures**, so digits align vertically down a long column of rows. The BTW caption
under each price is `caption-btw`, 11px, muted.

## Layout & Spacing

Fluid grid, 1200px maximum container, everything on an 8px base unit. Vertical
rhythm is generous: 80px between sections on desktop, 48px on mobile.

**Swoosh dividers** are organic curved SVGs in deep green with a thin
fresh-green outline, flowing left to right. Maximum two per page — below the
hero and above the footer. They guide the eye down; they never compete with
content.

Minimum interactive target is 44px; buttons are 48px tall.

## Elevation

Three layers: off-white background, white surfaces, and soft ambient shadow.
The card shadow carries a green tint — `rgba(27, 77, 46, 0.08)` — which keeps
the interface from turning grey and muddy. On hover, cards lift a few pixels
and the shadow deepens without hardening.

## Shapes

**14px is the house radius** and applies to cards, inputs, rows, buttons and
image containers. Chips and small buttons drop to 8px; pills and round icon
buttons go fully round; large hero panels may go to 20px. Nothing else.

## Components

### Buttons
Primary: forest green fill, white text, 48px tall, 14px radius.
Accent: leaf green fill with **dark ink text**, never white.
Secondary: transparent with a forest green border and forest green text.
WhatsApp: WhatsApp green fill with dark ink text and the WhatsApp glyph.
Every button has a visible 3px focus ring in `focus-ring` at 2px offset.

### Input fields
Off-white ground, 1px forest green border at 20% opacity, 14px radius, 48px
tall. On focus the border goes to full-opacity leaf green and the focus ring
appears. The price list search field is the widest control on its page.

### Cards
White, 14px radius, the tinted ambient shadow. Category cards put the label on
a solid white caption bar **below** the photo — never white text laid over
produce imagery, which fails contrast against bright vegetables.

### Audience cards
Two on the homepage. The horeca card is forest green with white text and a
leaf-green fill button; the consumer card is white with a forest green border
and an outlined button. The business card must read as the more prominent of
the two — it is the profitable half of the business.

## Price list components

The price list is the core of the site and needs its own specification.

### Sticky control bar
Sits on `surface-container-low` with a 1px `outline` bottom border. Contains
the search field, the Zakelijk/Particulier segmented control, and a
horizontally scrolling row of category chips. Stays pinned while the list
scrolls.

### Mode toggle
A segmented control, two options, 14px radius, 48px tall. The selected half is
forest green with white text; the unselected half is transparent with muted
text. It is the most consequential control on the page — it changes every price
on screen — so it must never read as a minor filter.

### Category chips
Fully round, 36px tall, 8px radius family. Resting: white with an `outline`
border and charcoal text. Active: leaf green fill with dark ink text.

### Product row
White card, 14px radius, 1px `outline` border, 8px gap between rows. Three
columns: name and unit on the left, price on the right, action at the far
right. Product name is `label-md` weight 600 in charcoal, unit beneath it in
`label-sm` muted. Price is right-aligned `price` with tabular figures, and the
BTW caption sits directly under it.

### Status chips
Dagprijs — `status-day` background, forest green text.
Seizoen — `status-season` amber, dark amber text, shown beside the product name.
Uitverkocht — `status-out` muted red, dark red text; the row drops to
`on-surface-disabled`, loses its add button, and cannot be selected.
All three carry their word. None is colour-only.

### Add control and stepper
Resting is a 44px round button with a forest green border and a plus glyph.
Once a quantity exists it becomes a stepper: minus, quantity, plus — the
quantity in tabular figures so it does not jitter as it changes.

### Order bar
Fixed to the bottom, forest green, with the `bar` shadow. Item count in white
on the left, an outlined "Wissen" button, and the WhatsApp CTA on the right as
the strongest element in the bar.

### Terms panel
`status-day` background, 14px radius, sitting below the list. Its copy switches
with the mode — ex BTW and delivery terms for Zakelijk, incl BTW for
Particulier.

## What this system does not include

No dark mode. No payment, cart, checkout or account components — ordering
happens through WhatsApp. No "Biologisch" or "Vers van 't land" product chips;
the only product states are Dagprijs, Seizoen and Uitverkocht, and they come
from the price sheet rather than from marketing.
