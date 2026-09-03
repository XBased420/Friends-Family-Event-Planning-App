# Project brief

## Naming
The app does not have a real name yet. **"Rally" is a placeholder** used so the prototype
has something to display. The tagline "Get the crew together" is a placeholder too.

- Never treat the name as decided
- Never hardcode it into architecture, file names, components, variables, or data models
- It lives in `const BRAND` in index.html, plus one `apple-mobile-web-app-title` meta tag.
  Renaming is a four-string edit.
- The logo mark (three dots converging on a gathering point) is abstract on purpose so it
  survives a rename.

## What it is
A mobile social coordination app. Core mission: help people spend less time sitting at
home wondering what to do, and more time actually doing things together.

**Not a social feed.** No infinite scroll, no follower counts, no vanity metrics.

## Five screens, five questions
| Screen | Question |
|---|---|
| Map | Where are my people? |
| Discover | What can we do? |
| Plans | What are we doing? |
| Messages | Who am I coordinating with? |
| Profile | What's my social status? |

If a screen can't answer its question in three seconds, it's wrong.

## AI
An embedded layer, never a chatbot screen. Six behaviors:
1. Activity recommendations
2. Itinerary builder from natural language
3. Group preference planner
4. Nearby friend suggestions
5. Event summaries
6. Contextual suggestions inside messages

## Technical state
Single self-contained HTML file — vanilla JS, custom CSS, no build step, no dependencies,
no backend. Map is hand-drawn SVG on purpose: no API key, no rate limits, cannot fail in
a demo. All data is realistic mock data, never lorem ipsum.

## Deployment
GitHub Pages, from the repo root.
Live: https://xbased420.github.io/Friends-Family-Event-Planning-App/
