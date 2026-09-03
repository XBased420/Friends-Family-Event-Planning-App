# Social Coordination App
### *working name: "Rally" — placeholder, not final*

**[→ Open the live prototype](https://xbased420.github.io/Friends-Family-Event-Planning-App/)**
*Best viewed on a phone. On iOS, use Share → Add to Home Screen and it launches full-screen with no browser chrome.*

A mobile-first social coordination app built to answer one question: **why is it so hard to actually get together with people?**

Not another feed. No infinite scroll, no follower counts, no engagement metrics. The product exists to get people off their phones and into a room with each other — and every screen is designed against that goal.

---

## The problem

Group plans die in the gap between "we should hang out" and an actual time and place. Existing tools each solve one slice: a map shows you where people are but not what to do, an events app shows you what's on but not who's free, a group chat has the conversation but nothing ever gets scheduled. The coordination cost is the thing that kills the hangout, not the lack of options.

This app collapses that gap into one place.

## Five screens, five questions

Every tab answers exactly one question. If a screen can't answer its question in three seconds, it's wrong.

| Screen | The question it answers |
|---|---|
| **Map** | Where are my people? |
| **Discover** | What can we do? |
| **Plans** | What are we doing? |
| **Messages** | Who am I coordinating with? |
| **Profile** | What's my social status? |

That last one is the thesis. The profile has no follower count and no post history. It has an **availability state** — available, maybe later, busy — because in a coordination app your social status is whether you can be gotten hold of, not how many people watch you.

## AI as a layer, not a screen

There is no chatbot tab. AI shows up six times, always inside the thing you were already doing:

1. **Activity recommendations** — "what should we do tonight," weighted by who's actually free
2. **Itinerary builder** — plain English in, a timed multi-stop plan with per-person cost out
3. **Group preference planner** — reconciles what the group wants against budget and distance
4. **Nearby friend suggestions** — surfaces the overlap when you and a friend are both free and close
5. **Event summaries** — messy listings compressed into something scannable
6. **Contextual suggestions in messages** — detects "anyone wanna go bowling Friday?" and offers to turn it into a real plan with the details pre-filled

The interaction to try first: **Plans → New plan → Plan with AI → Build my plan.** It takes a natural-language request and returns a full Saturday night — three stops, times, venues, $43/person against a $50 cap.

---

## Design system

The system is locked and documented so the product stays coherent as it grows. Every color has exactly one job; nothing is decorative.

**Foundation**
```
#0A0B0F   ink (base)
#13151B   surface
#1B1E26   raised surface
rgba(255,255,255,.08)   hairline
```

**Accent — the only color that means "go"**
```
#FF6A3D → #FFA14A   flare orange, all primary actions
```

**Support — one job each, never decoration**
```
#9BE84B   lime      live / available
#FFC24B   amber     recently active / idle
#4CD6F5   cyan      AI surfaces ONLY
#8B7BFF   violet    events ONLY
```

Cyan is quarantined to AI. That's deliberate — it makes AI legible as a *layer* running through the product instead of a theme applied on top of it. You always know when the machine is talking.

**Type** — Bricolage Grotesque for the wordmark and screen headers, Figtree for all UI.
**Radius** — 28px cards, 20px tiles, 14px chips, pill buttons.
**Motion** — subtle, and only in response to a user action. Nothing bounces. Nothing animates just to prove it can.

**Explicitly rejected:** purple-gradient AI aesthetic, corporate dashboard patterns, crypto styling, sparkle icons everywhere, location-pin logos, robot heads, handshake imagery.

**Logo** — three dots converging on a gathering point inside a pulse ring. Abstract on purpose: the mark survives a name change, which matters because the name isn't decided.

---

## Architecture decisions

Choices I made deliberately, and the tradeoffs I accepted.

**Single self-contained HTML file. No build step, no dependencies, no framework.**
Nothing to install, nothing to break, opens anywhere. The cost is that it doesn't scale to a production codebase — which is fine, because this is a prototype whose job is to communicate the product, not to be the product.

**The map is hand-drawn SVG, not Mapbox or Google Maps.**
No API key, no rate limits, no network dependency, no billing surprise. It cannot fail during a demo, which is the single most important property a demo can have. The tradeoff: it doesn't pan to real geography. For proving the interaction model, it doesn't need to.

**Mock data is realistic, never lorem ipsum.**
Real venue names, plausible Dallas geography, actual prices, messages written the way people text. A prototype full of placeholder text tests nothing, because "Lorem ipsum dolor" never reveals that your card breaks on a long restaurant name.

**The placeholder name lives in exactly one place.**
```js
const BRAND = { name: 'Rally', tagline: '...', handle: '...', link: '...' };
```
Nothing else in the codebase references it — not file names, not components, not data models. Renaming the entire app is a four-string edit. "Rally" was never a decision, so it was never allowed to become a dependency.

**PWA meta tags + display-mode: standalone.**
Added to the Home Screen on iOS, it launches with no browser chrome and the prototype's simulated status bar hides itself so the real one takes over. The difference between a demo that reads as a website and one that reads as an app.

---

## Roadmap

- [x] Full interactive prototype — all five screens, working flows, mock data
- [x] Deployed and publicly accessible
- [x] Installable to iOS Home Screen, launches full-screen
- [ ] Screen recording / demo video
- [ ] Port the Discover screen to React Native + Expo
- [ ] Real backend — auth, friends graph, persistence
- [ ] Actual location services and live presence

The next milestone is a native port of one screen. **One**, finished properly. A single polished native screen is worth more than five half-finished ones.

---

## How this was built

I'm self-taught with no CS degree, and I used AI tooling heavily to write this code. I'm putting that in the README on purpose.

What I own are the decisions: the no-feed thesis, the five-questions structure, the locked color system and the rule that cyan only ever means AI, the choice to hand-draw the map so a demo can't fail, availability replacing follower counts, keeping the name swappable. The reasoning in the Architecture section above is mine — I can defend every tradeoff in it, including the ones I got wrong the first time.

Building real products with AI agents is the skill I'm developing, and pretending otherwise would be a worse signal than being straightforward about it.

---

## Run it locally

Clone it and open `index.html` in a browser. That's the whole process — no install, no build, no server.

```bash
git clone https://github.com/XBased420/Friends-Family-Event-Planning-App.git
cd Friends-Family-Event-Planning-App
```

Then open `index.html`. Use your browser's device toolbar at iPhone dimensions, or just open the live link on your phone.

---

*Prototype. Fictional data throughout — the people, venues, and events aren't real.*
