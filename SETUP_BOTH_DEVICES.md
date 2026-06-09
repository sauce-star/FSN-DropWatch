# FSN DropWatch - Setup & Installation (Emulator + Physical Device)

## Part 1: Prerequisites Check

### Verify Flutter Installation
```bash
flutter doctor
```

Expected output should show:
- ✓ Flutter (Channel stable)
- ✓ Android Studio / Xcode
- ✓ Android SDK / iOS SDK
- ✓ Dart SDK

If any are missing, install them before proceeding.

---

## Part 2: Setup for Android Emulator

### Step 1: Open Android Studio
1. Launch Android Studio
2. Go to **Tools** → **Device Manager**
3. Click **Create Device**

### Step 2: Create Virtual Device
- Select device (e.g., Pixel 6)
- Select system image (API 31 or higher recommended)
- Name it (e.g., "Pixel_6_API_33")
- Click **Finish**

### Step 3: Start the Emulator
```bash
# List available emulators
emulator -list-avds

# Start a specific emulator (replace with your emulator name)
emulator -avd Pixel_6_API_33

# Or use Android Studio: Device Manager → Play button
```

### Step 4: Verify Emulator is Running
```bash
flutter devices
```

You should see your emulator listed.

### Step 5: Run App on Emulator
```bash
cd fsn-dropwatch
flutter pub get
flutter run
```

**The app will build and launch on the emulator automatically!**

---

## Part 3: Setup for Physical Android Device

### Step 1: Enable Developer Mode on Phone

**For Android 10 and earlier:**
1. Go to **Settings** → **About Phone**
2. Tap **Build Number** 7 times until you see "You are now a developer!"
3. Go back to **Settings** → **System** → **Developer Options**
4. Enable **USB Debugging**
5. Enable **Install from Unknown Sources** (in Security settings)

**For Android 11+:**
1. Go to **Settings** → **About Phone** → **Build Number**
2. Tap 7 times to enable Developer Mode
3. Go to **Settings** → **System** → **Developer Options**
4. Enable **USB Debugging**
5. Go to **Settings** → **Apps & Notifications** → **Advanced** → **Install Unknown Apps** → Select your file manager

### Step 2: Connect Device via USB
1. Connect phone to computer with USB cable
2. On phone, tap **Allow** when prompted for USB debugging
3. You may need to authorize the fingerprint

### Step 3: Verify Device Connection
```bash
flutter devices
```

You should see your physical device listed.

### Step 4: Run App on Device
```bash
cd fsn-dropwatch
flutter pub get
flutter run
```

**The app will build and install on your phone automatically!**

---

## Part 4: Build Release APK for Physical Device

### Without Code Signing (Debug APK)
```bash
flutter build apk --debug
```

Output: `build/app/outputs/flutter-app/debug/app-debug.apk`

### With Code Signing (Recommended for Distribution)

#### Create Signing Key (One-time setup)
```bash
keytool -genkey -v -keystore ~/fsn-dropwatch-key.keystore \
  -keyalg RSA -keysize 2048 -validity 10000 -alias fsn-dropwatch
```

You'll be prompted for:
- First and last name: FSN Team
- Organizational unit: Development
- Organization: FSN
- City/Locality: Your City
- State/Province: Your State
- Country: US
- Password: Create a strong password (remember it!)

#### Create `android/key.properties`
```properties
storePassword=YOUR_PASSWORD_FROM_ABOVE
keyPassword=YOUR_PASSWORD_FROM_ABOVE
keyAlias=fsn-dropwatch
storeFile=/Users/YOUR_USERNAME/fsn-dropwatch-key.keystore
```

**Note:** Use the correct path to your keystore file.

#### Build Signed Release APK
```bash
flutter build apk --release
```

Output: `build/app/outputs/flutter-app/release/app-release.apk`

---

## Part 5: Installation Methods for Physical Device

### Method A: Direct Installation via USB (Hot Deployment)
```bash
# While device is connected
flutter run

# App builds, installs, and launches automatically
```

### Method B: Install Debug APK
```bash
# Build debug APK
flutter build apk --debug

# Install via ADB
adb install build/app/outputs/flutter-app/debug/app-debug.apk

# Or transfer APK to phone and tap to install
```

### Method C: Install Release APK
```bash
# Build release APK
flutter build apk --release

# Install via ADB
adb install build/app/outputs/flutter-app/release/app-release.apk

# Or transfer APK to phone and tap to install
```

### Method D: Manual File Transfer
1. Build the APK: `flutter build apk --release`
2. Copy `app-release.apk` from `build/app/outputs/flutter-app/release/`
3. Transfer to your phone via email, cloud storage, or USB
4. On phone, tap the APK file
5. Tap **Install** (may need to enable "Unknown Sources")
6. Launch the app

---

## Part 6: Testing on Both Devices Simultaneously

### Start Emulator
```bash
emulator -avd Pixel_6_API_33 &
```

### Connect Physical Device via USB

### Check Both Devices
```bash
flutter devices
```

Output should show both:
```
emulator-5554 (emulator)  • Pixel 6 API 33
FA8AL1A00145 (physical)   • Samsung Galaxy S21 Ultra
```

### Run on Specific Device
```bash
# Run on emulator
flutter run -d emulator-5554

# Run on physical device
flutter run -d FA8AL1A00145

# Run on all devices
flutter run -d all
```

---

## Part 7: Troubleshooting

### Device Not Showing in `flutter devices`

**Emulator:**
- Restart emulator
- Check Android SDK path: `flutter config --android-sdk`
- Run `flutter doctor -v` for detailed info

**Physical Device:**
- Check USB cable (try different cable/port)
- Re-enable USB Debugging
- Revoke and re-grant Developer Options authorization
- Try: `adb kill-server` then `adb start-server`

### Build Fails
```bash
# Clean build
flutter clean

# Rebuild
flutter pub get
flutter run
```

### Permission Denied on Keystore
```bash
chmod 600 ~/fsn-dropwatch-key.keystore
```

### "Flutter SDK not found"
```bash
export PATH="$PATH:/path/to/flutter/bin"
```

---

## Part 8: Performance Tips

### For Emulator
- Use API 30+ for better performance
- Allocate more RAM (8GB recommended)
- Enable hardware acceleration
- Close other applications

### For Physical Device
- Close background apps
- Enable airplane mode (except USB)
- Use USB 3.0 ports for faster transfer
- Keep device on while developing

---

## Part 9: Quick Start Commands

```bash
# Navigate to project
cd fsn-dropwatch

# Check setup
flutter doctor

# Get dependencies
flutter pub get

# List devices
flutter devices

# Run on default device
flutter run

# Run in debug mode with verbose logging
flutter run -v

# Run and stay in debug console
flutter run
# Then press 'r' to hot reload
# Press 'R' to hot restart
# Press 'q' to quit

# Build APK
flutter build apk --release

# Install APK
adb install app-release.apk
```

---

## Part 10: What to Expect

### First Launch
1. Splash screen displays with FSN DropWatch logo
2. Animated fade and scale effects
3. After 3 seconds, navigates to Home screen
4. Bottom navigation bar shows 5 tabs

### Home Screen Features
- Green checkmark with "All good" status
- Water and Energy stat cards
- Today's summary with savings

### Available Screens
1. **Home** - Dashboard with status
2. **History** - Leak history with filtering
3. **Analytics** - Usage charts and savings
4. **Devices** - Connected sensors and plugs
5. **Settings** - User profile and preferences

---

## Support

If you encounter issues:
1. Check `flutter doctor` output
2. Review troubleshooting section above
3. Check Flutter documentation: https://flutter.dev/docs
4. Open GitHub issue: https://github.com/sauce-star/fsn-dropwatch/issues

**Happy testing! 🎉**
