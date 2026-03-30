# How To Run

This project is a Flutter app. The entrypoint is `lib/main.dart`, and Flutter uses that file by default when you run the project from the terminal.

## Prerequisites

- Flutter SDK installed and available in your shell
- At least one enabled target device or platform

## Basic terminal flow

From the project root:

```bash
flutter pub get
flutter devices
flutter run
```

`flutter run` will launch the app using `lib/main.dart`.

## Run on a specific platform

Examples:

```bash
flutter run -d chrome
flutter run -d macos
flutter run -d windows
flutter run -d linux
flutter run -d ios
flutter run -d android
```

Use `flutter devices` first to see which targets are currently available on your machine.

## Useful commands

Install dependencies:

```bash
flutter pub get
```

Analyze the code:

```bash
flutter analyze
```

Run tests:

```bash
flutter test
```

## Notes

- The app uses `MaterialApp.router` in `lib/main.dart`.
- Routing is configured in `lib/core/routing.dart`.
- If you want to force a different entrypoint in the future, Flutter also supports:

```bash
flutter run -t lib/main.dart
```
