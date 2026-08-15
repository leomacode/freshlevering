---
name: Dutch Harvest Modern
colors:
  surface: '#f6fbf5'
  surface-dim: '#d7dbd6'
  surface-bright: '#f6fbf5'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f0f5f0'
  surface-container: '#ebefea'
  surface-container-high: '#e5e9e4'
  surface-container-highest: '#dfe4df'
  on-surface: '#181d1a'
  on-surface-variant: '#414942'
  inverse-surface: '#2c322e'
  inverse-on-surface: '#edf2ed'
  outline: '#717971'
  outline-variant: '#c1c9bf'
  surface-tint: '#376847'
  primary: '#00361a'
  on-primary: '#ffffff'
  primary-container: '#1b4d2e'
  on-primary-container: '#89bd95'
  inverse-primary: '#9ed3aa'
  secondary: '#1a6d00'
  on-secondary: '#ffffff'
  secondary-container: '#93fb71'
  on-secondary-container: '#1c7400'
  tertiary: '#2b2f2c'
  on-tertiary: '#ffffff'
  tertiary-container: '#424542'
  on-tertiary-container: '#afb2af'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#b9efc5'
  primary-fixed-dim: '#9ed3aa'
  on-primary-fixed: '#00210e'
  on-primary-fixed-variant: '#1e5031'
  secondary-fixed: '#93fb71'
  secondary-fixed-dim: '#78dd58'
  on-secondary-fixed: '#042100'
  on-secondary-fixed-variant: '#125300'
  tertiary-fixed: '#e1e3df'
  tertiary-fixed-dim: '#c5c7c3'
  on-tertiary-fixed: '#191c1a'
  on-tertiary-fixed-variant: '#444845'
  background: '#f6fbf5'
  on-background: '#181d1a'
  surface-variant: '#dfe4df'
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
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  unit: 8px
  container-max: 1200px
  gutter: 24px
  margin-mobile: 16px
  margin-desktop: 40px
  section-gap: 80px
---

## Brand & Style

The design system is rooted in the "Premium Local Greengrocer" aesthetic—a blend of traditional Dutch reliability and modern, clean efficiency. It targets health-conscious consumers and families who value freshness and local sourcing. 

The visual style is **Modern Corporate** with **Tactile** influences. It utilizes heavy whitespace to evoke a "clean" feeling, paired with organic curved dividers (swooshes) that mimic the natural forms of leaves and hills. The emotional response should be one of trust, vitality, and effortless health. Imagery should always be high-key, featuring bright produce with natural water droplets to emphasize the "Freshlevering" promise.

## Colors

The palette is anchored by **Deep Forest Green**, providing an authoritative and established foundation. **Fresh Leaf Green** is used sparingly for call-to-action elements, success states, and accents to inject energy and highlight "freshness." 

The background uses a subtle **Off-white** to reduce eye strain and provide a softer, more organic canvas than pure white. Pure **White** is reserved strictly for elevated surfaces like cards and modals to create a clear "layering" effect. Text is rendered in **Charcoal** rather than pure black to maintain a sophisticated, high-end editorial feel.

## Typography

This design system employs a classic pairing: **Lora** (Serif) for headings to convey tradition and craftsmanship, and **Inter** (Sans-serif) for body text to ensure maximum legibility and a modern digital feel. 

Headlines should use tighter letter-spacing to feel more cohesive. For mobile, display sizes scale down significantly to ensure content remains the hero. Navigation and technical labels utilize the Medium or Semi-Bold weights of Inter to provide clear affordance against the more decorative Lora headings.

## Layout & Spacing

The layout follows a **Fluid Grid** model with a maximum container width to maintain readability on ultra-wide monitors. A base unit of 8px governs all spatial relationships.

**Swoosh Dividers:** Sections are separated by organic, curved SVG dividers. These curves should always flow from left-to-right, either ascending or descending, to guide the user's eye down the page. 

**Density:** The design favors a "breathable" density. Generous vertical padding (section-gap) is essential to maintain the premium feel. On mobile, gutters shrink to 16px to maximize screen real estate for product photography.

## Elevation & Depth

Hierarchy is established through **Tonal Layers** and **Ambient Shadows**. 

1.  **Base Layer:** The Off-white background (#F7F9F5).
2.  **Surface Layer:** Pure White (#FFFFFF) cards and containers.
3.  **Shadows:** Use a soft, diffused shadow for cards: `0px 4px 20px rgba(27, 77, 46, 0.08)`. Note the subtle green tint in the shadow, which anchors the element to the brand palette and prevents the UI from feeling "gray" or "muddy."
4.  **Interactions:** On hover, cards should lift slightly (y-offset increases) and the shadow should become more pronounced but remain soft.

## Shapes

The design system uses a consistent **14px corner radius** for all primary UI elements (cards, input fields, image containers). This specific radius strikes a balance between friendly (rounded) and professional (structured). 

- **Small elements:** (Buttons, chips) use the standard `rounded` (8px) or `pill` (100px) settings.
- **Large elements:** (Feature cards, hero sections) strictly adhere to the 14px rule.
- **Icons:** Should be encased in a circular "leaf" style container or remain frameless to avoid visual clutter.

## Components

### Buttons
Primary buttons use the Forest Green background with White text. Secondary/Action buttons use the Fresh Leaf Green background. All buttons have a minimum height of 48px to ensure touch-friendliness and a premium feel.

### Input Fields
Inputs feature a 1px border in a muted Forest Green (20% opacity) on the Off-white background. Upon focus, the border hardens to full opacity Fresh Leaf Green.

### Cards
Product cards are the core component. They must feature a Pure White background, the 14px corner radius, and the branded ambient shadow. The product image should overflow the top of the card slightly or be framed in a high-key, bright container.

### Chips/Badges
Used for categories like "Biologisch" or "Vers van 't land." These use a light tint of Fresh Leaf Green with dark Forest Green text to ensure high contrast and legibility.

### Curved Dividers
Incorporate SVG "swooshes" at the bottom of hero sections and between major landing page modules to break the grid and reinforce the organic brand personality.