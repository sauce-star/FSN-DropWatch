# FSN DropWatch - Quick Start (30 seconds)

## Installation in 3 Steps

### 1️⃣ Clone & Setup
```bash
git clone https://github.com/sauce-star/fsn-dropwatch.git
cd fsn-dropwatch
flutter pub get
```

### 2️⃣ Run on Device

**On Emulator:**
```bash
flutter run
```

**On Physical Device (USB connected):**
```bash
flutter run
```

### 3️⃣ That's it! 🎉
The app launches automatically.

---

## What You'll See

✅ **Splash Screen** (3 seconds)
- FSN DropWatch logo with animations
- Gradient background

✅ **Home Screen**
- Status indicator (green checkmark)
- Water & Energy stats
- Today's savings summary

✅ **5 Navigation Tabs**
- 🏠 Home
- 📜 History
- 📊 Analytics
- 📱 Devices
- ⚙️ Settings

---

## Useful Commands During Development

```bash
flutter run          # Run app
flutter run -v       # Verbose logging
r                    # Hot reload (while running)
R                    # Hot restart
q                    # Quit
```

---

## Build for Distribution

```bash
# Release APK
flutter build apk --release

# Output: build/app/outputs/flutter-app/release/app-release.apk

# Install on device
adb install app-release.apk
```

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| Device not found | `flutter devices` - check connection |
| Build fails | `flutter clean` then `flutter pub get` |
| Slow emulator | Use API 30+, allocate 8GB RAM |
| Permission denied | Enable USB Debugging on device |

---

## Next Steps

- 📖 Read: `SETUP_BOTH_DEVICES.md` for detailed setup
- 📖 Read: `INSTALLATION_GUIDE.md` for in-depth guide
- 📖 Read: `BUILD_CONFIGURATION.md` for release builds

**Enjoy! 🚀**
