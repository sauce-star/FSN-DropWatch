# FSN DropWatch - Flutter App

Stop paying for water and power you never used.

## Overview

FSN DropWatch is a Flutter-based smart home monitoring system that detects and prevents water and power waste. The app connects to IoT sensors via Bluetooth to monitor usage in real-time and alert users to potential leaks and wasteful consumption.

## Features

- ✅ Detect leaks and running taps
- ✅ Monitor standby power usage
- ✅ Real-time smart alerts
- ✅ Bluetooth-connected devices
- ✅ History & analytics
- ✅ Secure and private

## Tech Stack

- **Frontend**: Flutter 3 (Dart)
- **Communication**: Bluetooth (HC-05)
- **Backend**: Firebase (Auth, DB, Cloud)
- **Analytics**: FL Chart
- **Notifications**: Local Notifications
- **Platform**: Android & iOS

## Quick Start

1. Install Flutter: [flutter.dev](https://flutter.dev)
2. Clone this repository
3. Run `flutter pub get`
4. Run `flutter run`

## Project Structure

```
lib/
├── main.dart              # App entry point
├── screens/
│   ├── home_screen.dart
│   ├── alert_screen.dart
│   ├── leak_history_screen.dart
│   ├── analytics_screen.dart
│   ├── devices_screen.dart
│   ├── notifications_screen.dart
│   └── settings_screen.dart
├── widgets/
│   ├── bottom_nav_bar.dart
│   ├── alert_popup.dart
│   └── device_card.dart
├── models/
│   ├── leak.dart
│   ├── device.dart
│   ├── notification.dart
│   └── user.dart
├── services/
│   ├── bluetooth_service.dart
│   ├── firebase_service.dart
│   └── notification_service.dart
└── utils/
    ├── constants.dart
    └── colors.dart
```

## Future Enhancements

- Firebase integration
- Bluetooth HC-05 full support
- Push notifications
- Analytics dashboard
- User authentication
- Data persistence
- Cloud backup

## License

Proprietary - FSN DropWatch

## Support

For issues or feature requests, please open an issue in this repository.
