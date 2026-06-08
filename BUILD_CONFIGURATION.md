# FSN DropWatch - Production Build Configuration

## Signing Configuration

To build release APK with signing:

### 1. Create Signing Key
```bash
keytool -genkey -v -keystore ~/fsn-dropwatch-key.keystore -keyalg RSA -keysize 2048 -validity 10000 -alias fsn-dropwatch
```

### 2. Create key.properties file
Create `android/key.properties`:
```properties
storePassword=YOUR_STORE_PASSWORD
keyPassword=YOUR_KEY_PASSWORD
keyAlias=fsn-dropwatch
storeFile=/path/to/fsn-dropwatch-key.keystore
```

### 3. Build Release APK
```bash
flutter build apk --release
```

### 4. Build App Bundle (for Google Play)
```bash
flutter build appbundle --release
```

## App Icons

Replace default icons with FSN DropWatch branding:
- `android/app/src/main/res/mipmap-*/ic_launcher.png`
- Recommended sizes:
  - ldpi: 36x36
  - mdpi: 48x48
  - hdpi: 72x72
  - xhdpi: 96x96
  - xxhdpi: 144x144
  - xxxhdpi: 192x192

## Splash Screen

Edit `android/app/src/main/res/drawable/launch_background.xml` to customize splash screen.

## Google Play Store Submission

1. Generate signed APK/Bundle
2. Fill in store listing details
3. Add app icons, screenshots, description
4. Set pricing and distribution
5. Submit for review

## App Configuration

- **Package Name**: com.fsn.dropwatch
- **App Name**: FSN DropWatch
- **Version Code**: 1
- **Version Name**: 1.0.0
- **Min SDK**: 21 (Android 5.0)
- **Target SDK**: 33 (Android 13)
