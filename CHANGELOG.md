# Changelog

## v3 — Plan covers (current)
- **Plan covers**: 10 palette-derived presets, selectable in the create flow
- Emoji texture layer — the plan's emoji tiled and rotated behind the hero emoji
- Cover thumbnails on plan cards, full cover hero on plan detail and in the AI result
- AI picks a cover from the request text (family / active / food keywords), user can swap it
- Removed the flare bar on plan cards — the cover thumbnail does that job now
- **Fixed**: "Redo" in the AI sheet crashed because it read the textarea after it had been replaced

## v2 — Ship prep
- Mobile breakpoint 430px → 520px (Pro Max is 440px wide and was still showing the bezel frame)
- PWA meta tags — Add to Home Screen launches with no browser chrome
- `display-mode: standalone` CSS hides the simulated status bar so the real iOS one takes over
- `const BRAND` — placeholder name isolated to one object plus one meta tag
- App icon generated from the logo mark

## v1 — Prototype
- All five screens: Map, Discover, Plans, Messages, Profile
- Hand-drawn SVG map with friend markers, presence states, place and event pins
- Location sharing: four privacy states, per-friend toggles
- Discover: AI vibe prompts, category filters, event rails, places
- Plans: list, detail with timeline, RSVP, attendees, notes
- Create flow: 3-step manual builder + AI itinerary builder
- Messages: DMs, groups, live intent detection that offers to build a plan
- Profile: availability states, friends online, interests, privacy
- Notifications that route to the right screen

## Next up
- [ ] Screen recording / demo video
- [ ] Group availability view — "find the gap"
- [ ] Cover tier 3: user text/sticker layer
- [ ] Port Discover to React Native + Expo
