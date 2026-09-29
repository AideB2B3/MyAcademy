# MyAcademy

> An iOS app for tackling weekly creative-mission challenges and documenting every achievement with a photo.

![Swift](https://img.shields.io/badge/Swift-5-F05138?logo=swift&logoColor=white)
![SwiftUI](https://img.shields.io/badge/UI-SwiftUI-0D96F6?logo=swift&logoColor=white)
![Platform](https://img.shields.io/badge/iOS-18.0%2B-000000?logo=apple&logoColor=white)

## Overview

MyAcademy is an app prototype designed for an educational context: it offers users daily missions grouped into weekly challenges (photography, creative writing, drawing, themed recipes) and rewards progress with medals and stars. Each mission is completed by attaching a photo, so users keep a visual record of their journey.

The project puts **accessibility** front and center: almost every interface element has labels, hints and dedicated actions for VoiceOver.

## Key Features

- **Current challenge** with start and end dates, computed from today's date.
- **Mission list** showing status (completed / to do), title, description and photo preview.
- **Mission detail** with photo upload from the library (`UIImagePickerController`) and a button to complete the mission.
- **Progress indicator**: the star on the main screen fills in when all missions are completed.
- **Rewards section**: grid of months from October to June; for October and November the weekly missions are shown with completion medals.
- **VoiceOver support**: custom accessibility labels, hints, traits and actions.

Content in the code: 60 predefined missions (5 per week for 12 weeks, from October to December 2024).

## Tech Stack

| Area | Technology |
| --- | --- |
| Language | Swift 5 |
| UI | SwiftUI (`NavigationStack`, `LazyVGrid`, `sheet`) |
| Architecture | Lightweight MVVM (`MissionViewModel` with `ObservableObject` and `@Published`) |
| Interoperability | UIKit (`UIViewControllerRepresentable` for the image picker) |
| Accessibility | SwiftUI accessibility APIs for VoiceOver |
| External dependencies | None |
| Target | iOS 18.0+, iPhone |

## Installation and Usage

**Requirements:** macOS with an Xcode version able to build for iOS 18 (Xcode 16 or later). There are no dependencies to install.

```bash
git clone https://github.com/AideB2B3/MyAcademy.git
cd MyAcademy
open MyAcademy.xcodeproj
```

1. In Xcode, select the **MyAcademy** target and an iOS 18+ simulator (or a device).
2. Press `Cmd + R` to build and run.
3. Tap a mission, choose *Carica foto* (upload photo) and then *Completa Missione* (complete mission).

> The repository contains no shared schemes or automated tests; Xcode automatically generates the default scheme.

## Project Structure

```text
MyAcademy/
├── MyAcademy.xcodeproj
├── Solution_Concept.jpg           # "Solution Concept" image
└── MyAcademy/
    ├── MyAcademyApp.swift         # Entry point
    ├── ContentView.swift          # Main screen: current challenge and mission list
    ├── ViewModel.swift            # Mission model and MissionViewModel
    ├── MisisonData.swift          # Mission data (October–December 2024)
    ├── MissionDetailView.swift    # Mission detail and completion with photo
    ├── ImagePicker.swift          # SwiftUI wrapper for UIImagePickerController
    ├── RewardsView.swift          # Month grid and rewards
    ├── MonthRewardsView/          # One view per month (October and November implemented)
    └── Assets.xcassets/
```

## Future Improvements

- **Data persistence:** store missions and photos with SwiftData or Core Data so progress survives closing the app.
- **Shared state:** use a single `MissionViewModel` across all screens so the rewards screens reflect completed missions.
- **Configurable missions:** load challenges from an external or remote data source instead of fixed dates in the code.
- **Complete content:** write the mission descriptions and implement the reward screens for the remaining months (December–June).
- **Localization:** unify the interface language using a String Catalog.
- **Testing:** add unit tests for `MissionViewModel` and UI tests for the main flows.

## Author

**Davide Bellobuono**

- GitHub: [AideB2B3](https://github.com/AideB2B3)
- LinkedIn: [davide-bellobuono](https://www.linkedin.com/in/davide-bellobuono)

## License

The code is released under the MIT License (see the `LICENSE` file).
