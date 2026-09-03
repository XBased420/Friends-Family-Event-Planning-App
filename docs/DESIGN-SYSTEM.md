# Design system

Locked. Do not drift.

## Color

| Token | Hex | Job |
|---|---|---|
| ink | `#0A0B0F` | base background |
| surface | `#13151B` | cards |
| surface raised | `#1B1E26` | chips, controls |
| surface high | `#242833` | pressed / active fills |
| hairline | `rgba(255,255,255,.08)` | all borders |
| text | `#F4F3F0` | primary |
| muted | `#9AA0AE` | secondary |
| dim | `#6B7280` | tertiary, inactive nav |

**Primary accent — the only color that means "go"**
`#FF6A3D → #FFA14A` (flare orange). Every primary CTA. Nothing else.

**Support colors — one job each, never decoration**

| Hex | Name | Means |
|---|---|---|
| `#9BE84B` | lime | live / available |
| `#FFC24B` | amber | recently active / idle |
| `#4CD6F5` | cyan | AI surfaces ONLY |
| `#8B7BFF` | violet | events ONLY |

The cyan rule is the important one. It makes AI legible as a layer running through the
product rather than a theme sitting on top of it. If cyan appears somewhere that isn't
AI, the system has broken.

## Type
- **Bricolage Grotesque** — wordmark, screen headers, big numbers
- **Figtree** — everything else

## Radius
28px cards · 20px tiles · 14px chips · pill buttons

## Motion
Subtle, and only in response to a user action. Nothing bounces. Nothing animates to
prove it can. `prefers-reduced-motion` is respected.

## Plan covers
The one surface the user owns. Ten presets, all derived from the palette above so any
two look right side by side, with the plan emoji tiled as texture.

Rules that keep it from leaking:
- Covers stay inside their own bounds — never bleed into nav or chrome
- Text over a cover always sits on a scrim
- Nav, buttons and status colors never sample from the cover
- Flare orange stays the only "go" color regardless of what's behind it
- Covers belong to **plans**, not events. A cover signals ownership, and you don't own
  someone else's event.

The pattern is album art: rigid frame, free content.

## Banned
Purple-gradient AI aesthetic · corporate dashboards · crypto styling · sparkle icons
everywhere · location-pin logos · robot heads · handshakes
