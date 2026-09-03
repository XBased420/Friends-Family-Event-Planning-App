# Competitive research
*Compiled Sep 2026*

## Zenly — shut down 2023
Acquired by Snap for a reported $250M, killed at ~35M monthly active users. A team of
around ten in Paris built their own map engine rather than using Google or Apple Maps,
using game rendering techniques and deliberately targeting newer devices so they weren't
dragging legacy code. The result was the most playful map on the phone, not the most
accurate one — animated vehicles, boats, sea creatures. It died on monetization, not on
product.

**Relevance:** same architectural conclusion we reached for different reasons. A generic
map can't carry a personality. Hand-drawn SVG is the right call, not a shortcut.

**The critical finding.** Post-Zenly analysis of its successors: they copied the surface —
a map with friend dots — and stopped. A map with nothing to do on it is a utility, and
utilities get deleted. That is the exact hole this product fills. Our map hands off to
Discover and Plans.
Source: https://mapraiders.com/en/vs/zenly.html

## Howbout — the real competitor
~10M downloads, 200M+ plans made, grew on TikTok. Calendar-first: syncs Google, Outlook
and iCloud, shows you when friends are free, and positions around finding the gap and
locking the plan in. Granular privacy — share the full calendar or just availability.
Per-event chat so plans don't clutter the group thread. Home screen widgets.

**Their weakness is our product.** Howbout answers *when*. No map, no discovery. It
assumes you already know what you want to do.

**Their strength is our gap.** Their availability comes from real synced calendars. Ours
is a manual three-state toggle. Theirs works when nobody is actively using the app.
Source: https://howbout.app/about

## Partiful — the personality lesson
$20M from a16z, Google Play App of the Year, millions of MAU. Wins on humor and
customization rather than polish — parody album covers, absurd invite art, in-house
designers making deliberately loud stuff. Some users create an event for going to the gym.

**Takeaway:** our design is more disciplined than Partiful's. That is not the same as
more appealing to Gen Z. Personality beats taste in this category. Plan covers are the
response — one bounded surface where the user's personality gets in.
Source: https://www.cnbc.com/2025/04/19/meet-partiful-the-gen-z-party-planning-staple-thats-taking-on-apple.html

## Instagram Friend Map — launched Aug 2025 (US)
Lives on the Messages tab. Off by default, location updates only when the app is opened,
audience selectable down to specific people, notes can be left on the map.

**The question this forces us to answer:** why not just use Instagram? Because it's a
retention feature inside a feed app. It shows you where people are and hands you back to
the scroll. No plan object, no itinerary, no RSVP, no "what should we do." Same critique
as the Zenly successors.
Source: https://www.socialmediatoday.com/news/instagram-launches-test-friend-map-location-sharing/723911

## AI planning category
Almost all the energy is in travel, not local hangouts. The standing critique of that
category: most products marketed as AI planners are itinerary generators — they produce
a schedule and stop, without connecting the plan to the actual trip or the group.

**Where we currently sit:** our AI does the same thing. It generates and stops. The
difference is we already have the execution layer — the plan becomes a real object with
RSVPs, a group chat, notes and a timeline. Connecting generation to that layer is the moat.

One direct competitor: WhatNext (whatnext-ai.com), AI plans for date nights and hangouts
using real nearby places. Web-based, no friend graph, not a social product.

## Positioning
Nobody is doing the full loop. Zenly had the map and no plans. Howbout has the plans and
no map or discovery. Partiful has the invite and nothing before or after it. Instagram has
the map bolted to a feed.

> A map with nothing to do on it is a utility. This is a map with somewhere to go.

## Priority gaps
1. **Group availability view** — Howbout's core loop, and we don't have it
2. **Personality escape valve** — shipped as plan covers, v3
3. **The quiet state** — what the app looks like on a Tuesday when nobody's free. Zenly's
   successors died in that moment; our prototype is always artificially full of life
4. **Calendar sync** — table stakes eventually, but it's a backend problem
