# first_app ✅

A small Flutter demo app that displays a gradient background and a simple Dice Roller.

---

## Overview ✨

- **App name:** `first_app`
- **Description:** A demo showing a `GradientContainer` and a `DiceRoller` widget. Press the "Roll Dice" button to show a random dice face (1–6).
- **Main entry:** `lib/main.dart`
- **Widgets of interest:** `GradientContainer`, `DiceRoller`, `StyledText`

---

## Features 🔧

- Tap **Roll Dice** to randomly change the dice image.
- Uses local image assets for dice faces (assets/images/dice-1.png … dice-6.png).
- Simple, responsive UI with a gradient background.

---

## Prerequisites 🛠️

- Flutter SDK (project requires Dart SDK >= 3.9.2 as declared in `pubspec.yaml`).
- A configured device/emulator (Android, iOS, Web, macOS, Windows, Linux).

---

## Run the App ▶️

1. Clone the repo and open it in your terminal:

   git clone <repo-url> && cd first_app

2. Fetch packages:

   flutter pub get

3. Run on the default device:

   flutter run

4. To run on a specific device, use `flutter devices` to list devices and then:

   flutter run -d <device-id>

5. To run for web (if configured):

   flutter run -d chrome

---

## Build 📦

- Android (APK): `flutter build apk`
- iOS: `flutter build ios` (requires macOS)
- Web: `flutter build web`
- Windows: `flutter build windows`

---

## Tests 🧪

- Run all tests with `flutter test`.
- Example: run the DiceRoller widget test only with:

  `flutter test test/dice_roller_test.dart`

---

## Assets

The app includes dice face images declared in `pubspec.yaml` under `assets:`:

- `assets/images/dice-1.png`
- `assets/images/dice-2.png`
- `assets/images/dice-3.png`
- `assets/images/dice-4.png`
- `assets/images/dice-5.png`
- `assets/images/dice-6.png`

---

## Notes & Contribution

- This is a small demo intended for learning Flutter basics.
- Feel free to open issues or submit PRs to add features (e.g., unit tests, accessibility improvements, state management).
- No license file is included in the repository — add one if you plan to publish.

