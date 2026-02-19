# Dave's Dive - Project Context for Claude

## About the Developer
- Name: David
- Learning Swift and SwiftUI from a beginner/intermediate level
- Has some prior exposure to UIKit and Storyboards (did an Apple tutorial ~1 year ago)
- Visually oriented and language-oriented learner — analogies and visual demos work very well
- Runs Xcode on an 8GB RAM Mac, so preview canvas can be slow; use it sparingly
- Prefers patient, precise explanations; appreciates being corrected when wrong

## Project Overview
- App name: Dave's Dive
- Originally a UIKit OrderApp tutorial (copied mostly without full understanding)
- Now also exploring SwiftUI alongside the existing UIKit code
- `SwiftUIExperiment.swift` is a sandbox file for learning SwiftUI concepts

## What David Has Learned So Far

### SwiftUI vs UIKit/Storyboards
- SwiftUI uses declarative layout (describe intent) vs Storyboards (drag pixel positions)
- Storyboard constraints were confusing and fragile across screen sizes
- SwiftUI layout adapts automatically to different screen sizes and font settings
- Preview canvas (Command+Enter to toggle, Option+Command+Return to open) replaces Storyboards
- Comment out code and watch the preview update — great debugging technique

### SwiftUI Layout Fundamentals
- Modifiers like `.font()`, `.padding()`, `.background()` attach to views
- **Order of modifiers matters** — each wraps the result of the previous one
- Line breaks between modifiers are cosmetic only — Swift doesn't care
- Modifiers on container views (VStack, etc.) go **after the closing brace `}`**
- `.frame(maxWidth: .infinity, alignment: .leading)` stretches a view to full width and aligns content left
- `.padding(.leading, 20)` adds space on the left edge
- The yellow highlight in the canvas shows the actual frame bounds — useful for understanding layout

### Swift Language Concepts
- The **dot (`.`)** means "belonging to" a type — e.g., `.leading` is shorthand for `Alignment.leading` or `Edge.leading`
- Swift infers the type from context, so you can drop the type name and just write `.leading`
- `.leading` in `alignment: .leading` (an `Alignment` enum case) and `.leading` in `.padding(.leading)` (an `Edge` enum case) are unrelated — same word, different types
- **Enums** have named cases accessed with a dot — e.g., `Alignment.leading`, `CGFloat.infinity`
- **`CGFloat.infinity`** means "as large as possible" — used in `.frame(maxWidth: .infinity)`
- **Protocols** are contracts — `View` is a protocol that requires a `body` property
- Conforming to `View` gives a type all the modifier methods (`.font()`, `.padding()`, etc.) for free
- Say "conforms to the View protocol" (precise) or "is a View" (acceptable shorthand) — not "inherits from View"

### View Hierarchy
- `Text` is a leaf view — just displays content directly
- `Button` is a container — wraps a label view and adds tap behavior
- `Button("Tap Me") { }` quietly creates `Text("Tap Me")` as its label internally
- Modifiers flow **down** through the view hierarchy (environment inheritance)
- Setting `.font()` on a `VStack` passes it down to all child views automatically

## Current State of SwiftUIExperiment.swift
A simple VStack with:
- "Hello SwiftUI!" text (largeTitle font)
- A "Tap Me" button (borderedProminent style)
- "Mozzarella Sticks" text pushed to the left using `.frame(maxWidth: .infinity, alignment: .leading)` and `.padding(.leading, 20)`

## Preferred Teaching Style
- Explain the "why" not just the "what"
- Connect concepts to language/grammar analogies when helpful
- Let David experiment in the preview canvas and observe changes
- Don't overwhelm — one concept at a time
- Correct misunderstandings directly but kindly
