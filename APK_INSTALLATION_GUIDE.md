# FSN DropWatch - APK Build & Installation (Automated)

## What This Guide Does

This guide walks you through building the app into an APK file that you can:
- Email to yourself
- Transfer via cloud storage
- Share with others
- Install on any Android device

---

## Prerequisites

✅ Flutter installed and working
✅ Project cloned: `git clone https://github.com/sauce-star/fsn-dropwatch.git`
✅ Dependencies installed: `flutter pub get`

---

## Step 1: Build Release APK

### Navigate to Project
```bash
cd fsn-dropwatch
```

### Build the APK
```bash
flutter build apk --release
```

**This will take 2-5 minutes on first build.**

You should see:
```
✓ Built build/app/outputs/flutter-app/release/app-release.apk (XX.X MB).
```

---

## Step 2: Locate Your APK

The APK file is here:
```
fsn-dropwatch/build/app/outputs/flutter-app/release/app-release.apk
```

### On Windows
```
C:\Users\YourName\fsn-dropwatch\build\app\outputs\flutter-app\release\app-release.apk
```

### On Mac/Linux
```
~/fsn-dropwatch/build/app/outputs/flutter-app/release/app-release.apk
```

---

## Step 3: Install on Your Physical Device

### Option A: Email Yourself (Easiest)

1. **Find the APK file** (use steps above)
2. **Email it** to your Gmail account
3. **On your phone:**
   - Open Gmail
   - Download the attachment
   - Tap the APK file
   - Tap **Install**
   - Grant permissions
   - Done! ✅

### Option B: Cloud Storage (Google Drive)

1. **Upload APK** to Google Drive
2. **On your phone:**
   - Open Google Drive
   - Find the APK file
   - Tap it
   - Tap **Open with** → **Files**
   - Tap **Install**
   - Done! ✅

### Option C: USB Transfer

1. **Connect phone** to computer via USB
2. **Copy the APK** to your phone's Downloads folder
3. **On your phone:**
   - Open Files app
   - Go to **Downloads**
   - Tap the APK file
   - Tap **Install**
   - Done! ✅

### Option D: ADB (Command Line)

1. **Connect phone** via USB
2. **Run:**
```bash
adb install build/app/outputs/flutter-app/release/app-release.apk
```

3. **On your phone:**
   - Go to app drawer
   - Tap **DropWatch**
   - Done! ✅

---

## Step 4: Launch the App

### On Your Phone
1. Go to **App Drawer** (or swipe up)
2. Find **DropWatch**
3. Tap to open

### What You'll See
1. **Splash Screen** (3 seconds) - FSN DropWatch logo with animation
2. **Home Screen** - Dashboard with status and stats
3. **Bottom Navigation** - 5 tabs to explore

---

## App Features You Can Test

### 🏠 Home Tab
- Status indicator (green checkmark)
- Water and Energy statistics
- Today's savings summary

### 📜 History Tab
- Leak history list
- Filter by All/Water/Power
- Individual leak details

### 📊 Analytics Tab
- Water saved charts
- Energy saved charts
- Impact summary

### 📱 Devices Tab
- Connected sensor list
- Device status indicators
- Add new device option

### ⚙️ Settings Tab
- User profile
- Alert preferences
- Units configuration
- Help & Support

---

## Verify Installation

### Check App in Settings
1. Go to **Settings**
2. Go to **Apps** or **Applications**
3. Search for **DropWatch** or **FSN DropWatch**
4. You should see it listed
5. Tap it to see:
   - Version: 1.0.0
   - Package: com.fsn.dropwatch
   - Size: ~XX MB

---

## Uninstall (If Needed)

```bash
adb uninstall com.fsn.dropwatch
```

Or on your phone:
1. Long-press **DropWatch** app
2. Tap **Uninstall**
3. Confirm

---

## Troubleshooting

### "App not installing"
- Enable **Install from Unknown Sources** (Settings → Apps & Notifications)
- Check phone storage space (need ~100MB free)
- Try a different installation method

### "App crashes on launch"
- Ensure Android 5.0+ (API 21+) is installed
- Try uninstalling and reinstalling
- Check `flutter run -v` for detailed errors

### "File not found"
- Make sure you ran `flutter build apk --release` completely
- Check path is correct (see Step 2)
- Run `flutter clean` then rebuild

### "Permission denied"
- On phone: Go to **Settings** → **Apps** → **DropWatch** → **Permissions**
- Enable: Bluetooth, Location, Notifications

---

## App Information

| Property | Value |
|----------|-------|
| App Name | FSN DropWatch |
| Package | com.fsn.dropwatch |
| Version | 1.0.0 |
| Build | 1 |
| Min Android | 5.0 (API 21) |
| Target Android | 13 (API 33) |
| Size | ~50-80 MB |

---

## Next Steps

✅ **App Installed?**
- Test all 5 screens
- Explore features
- Check UI/UX

📝 **Want to Build Again?**
```bash
flutter clean
flutter pub get
flutter build apk --release
```

📦 **Ready for Google Play?**
- See `BUILD_CONFIGURATION.md`
- Follow code signing setup
- Build App Bundle: `flutter build appbundle --release`
- Upload to Google Play Console

---

## Support

❓ **Having issues?** Check:
1. `SETUP_BOTH_DEVICES.md` - Detailed troubleshooting
2. `INSTALLATION_GUIDE.md` - Full installation reference
3. GitHub Issues: https://github.com/sauce-star/fsn-dropwatch/issues

---

**Enjoy your FSN DropWatch app! 🎉**
