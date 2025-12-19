# FitnessX (fitness_app)

FitnessX is a multi-platform Flutter application that helps users plan and track workouts, manage meals and nutrition, follow guided exercises and workouts, and stay motivated with progress charts and reminders.

Built with Flutter and Firebase, the app includes features such as onboarding, personalized meal recommendations, workout scheduling, timers, video guidance, push notifications, and activity charts.

---

## 🔍 Key Features

- Onboarding flow and user authentication (Firebase Auth)
- Workout plans, exercise sets and timers
- Meal planner, food recommendations and nutrition tracking
- Video playback (YouTube and local videos) and web content via WebView
- Charts & progress visualization (fl_chart)
- In-app chat and notifications (firebase_messaging, flutter_local_notifications, awesome_notifications)
- Media uploads (Firebase Storage) and realtime/cloud data (Cloud Firestore / Realtime Database)
- Local calendar/agenda integration and scheduling

## 🧭 Architecture & Libraries

- Flutter (Dart) application
- State management: GetX and Provider (project uses both in different parts)
- Firebase: Core, Auth, Firestore, Realtime DB, Storage, Messaging
- Media & UI: video_player, youtube_player_flutter, flutter_svg, carousel_slider
- Utilities: shared_preferences, http, image_picker, url_launcher
- Custom local package: `dev_lib/calendar_agenda/`

See `pubspec.yaml` for the full list of packages and versions.

---

## 🚀 Getting Started — Development

Prerequisites
- Install Flutter (see https://docs.flutter.dev/get-started/install). This project targets Flutter compatible with Dart SDK >= 3.2.3 (see `pubspec.yaml`).
- Install platform tooling for Android, iOS, Web, or Desktop as needed.

Setup
1. Clone the repository:

```powershell
git clone https://github.com/TheSwapnil18/FitnessX-App.git
cd "Capstone Project"
```

2. Fetch dependencies:

```powershell
flutter pub get
```

3. Configure Firebase (required for full functionality):
- Android: place `google-services.json` into `android/app/` (a `google-services.json` is already present in this repo; verify it matches your Firebase project).
- iOS/macOS: add `GoogleService-Info.plist` into `ios/Runner/` and/or `macos/Runner/` if using Firebase for those platforms.
- Web: add your Firebase web config to `web/index.html` or initialize in code.

4. Run the app on an emulator or device:

```powershell
flutter run -d <device-id>
```

Build
- Android (APK): `flutter build apk --release`
- iOS: `flutter build ios` (use Xcode to sign and archive)
- Web: `flutter build web`
- Desktop: `flutter build windows|macos|linux`

---

## 🧪 Tests & Linting

- Run unit/widget tests: `flutter test`
- Analyze code: `flutter analyze`

---

## 🔧 Platform-specific notes

- Push Notifications: Requires Firebase Cloud Messaging + appropriate platform configuration (APNs for iOS, Android manifest, permission prompts).
- Local notifications: `flutter_local_notifications` / `awesome_notifications` need platform-specific setup. See each package's README.
- Storage & Media: Ensure appropriate Firebase Storage rules and Android/iOS permissions for camera and gallery access.

---

## 🛠️ Contributing

Contributions are welcome! If you'd like to contribute:

1. Fork the repo and create a feature branch: `git checkout -b feature/my-change`
2. Make changes and add tests where appropriate
3. Run `flutter analyze` and `flutter test`
4. Open a pull request describing the change

Use issues to report bugs or suggest enhancements.

---

<!--
## 🤝 License & Attribution

This repository does not include a top-level license file. If you want to open-source this project, add a license (for example, `MIT`) to the repository root.

-->

---

## 📬 Contact

Project: FitnessX — maintained by `TheSwapnil18` (GitHub). Open issues or pull requests in this repository for questions or feature requests.

---

