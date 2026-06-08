# FSN DropWatch Flutter App - Installation & Build Guide

## Prerequisites

- Flutter SDK (latest stable)
- Android Studio / Xcode
- Java Development Kit (JDK 11 or higher)
- Git

## Installation Steps

### 1. Clone Repository
```bash
git clone https://github.com/sauce-star/fsn-dropwatch.git
cd fsn-dropwatch
```

### 2. Get Dependencies
```bash
flutter pub get
```

### 3. Generate App Icons (Optional)
Replace the placeholder icon with your FSN DropWatch logo:
- Place your 192x192 PNG icon at `android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png`
- Or use a tool like [FlutterLauncherIcons](https://pub.dev/packages/flutter_launcher_icons)

### 4. Run on Device/Emulator
```bash
flutter run
```

## Building for Release

### Android APK

#### Debug APK (for testing)
```bash
flutter build apk --debug
```
Output: `build/app/outputs/flutter-app/debug/app-debug.apk`

#### Release APK (for distribution)
```bash
flutter build apk --release
```
Output: `build/app/outputs/flutter-app/release/app-release.apk`

#### App Bundle (for Google Play Store)
```bash
flutter build appbundle --release
```
Output: `build/app/outputs/bundle/release/app-release.aab`

### iOS IPA

```bash
flutter build ipa --release
```

## Setting Up Code Signing (Optional but Recommended)

### 1. Create a keystore (Android)
```bash
keytool -genkey -v -keystore ~/fsn-dropwatch-key.keystore \
  -keyalg RSA -keysize 2048 -validity 10000 -alias fsn-dropwatch
```

### 2. Create `android/key.properties`
```properties
storePassword=YOUR_STORE_PASSWORD
keyPassword=YOUR_KEY_PASSWORD
keyAlias=fsn-dropwatch
storeFile=/path/to/fsn-dropwatch-key.keystore
```

### 3. Build signed release APK
```bash
flutter build apk --release
```

## App Configuration

- **Package Name**: com.fsn.dropwatch
- **App Name**: FSN DropWatch
- **Version**: 1.0.0 (versionCode: 1)
- **Minimum SDK**: Android 5.0 (API 21)
- **Target SDK**: Android 13 (API 33)

## Installation Methods

### Method 1: Direct Installation via USB
```bash
# Connect device via USB and enable Developer Mode
flutter install
```

### Method 2: APK File Installation
1. Download `app-release.apk`
2. Transfer to Android device
3. Tap to install
4. Or use: `adb install app-release.apk`

### Method 3: Google Play Store
1. Build App Bundle: `flutter build appbundle --release`
2. Upload to Google Play Console
3. Configure store listing
4. Submit for review

## Troubleshooting

### Build Issues
- **"Flutter SDK not found"**: Set `FLUTTER_HOME` environment variable
- **"Android SDK not found"**: Run `flutter config --android-sdk /path/to/sdk`
- **"Gradle build failed"**: Run `flutter clean` then rebuild

### Signing Issues
- Verify `android/key.properties` path is correct
- Check keystore password is correct
- Ensure JDK is properly installed

### Installation Issues
- Enable "Unknown Sources" in device settings
- Check device storage space
- Update Android OS on device

## Permissions (Android)

The app requires:
- Internet (for Firebase, analytics)
- Bluetooth (for sensor communication)
- Location (for Bluetooth scanning)
- Notifications (for alerts)

Permissions are automatically requested on first use (Android 6+).

## Performance Optimization

- Splash screen with animations
- Efficient state management ready for integration
- Optimized widget rendering
- Responsive layouts

## Next Steps

1. Add Firebase configuration files
2. Integrate Bluetooth communication
3. Setup notification system
4. Configure analytics
5. Add user authentication

## Support

For issues or questions, open an issue on GitHub.
