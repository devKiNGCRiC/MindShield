# 🚀 Flutter Installation Guide - VS Code Method
## The Easiest Way to Install Flutter

> **This guide shows you how to install Flutter directly through VS Code**
> 
> Much easier than manual installation!

**Date:** October 31, 2025  
**Time Required:** 30-45 minutes  
**Difficulty:** Beginner-friendly ✅

---

## 📋 Prerequisites

Before starting, make sure you have:
- ✅ VS Code installed
- ✅ Git installed and configured
- ✅ Stable internet connection
- ✅ At least 2 GB free disk space

---

## 🎯 Method 1: Install via VS Code (EASIEST!)

### **Step 1: Install Flutter Extension**

The Flutter extension is already being installed! You should see it in progress in VS Code.

**What this extension does:**
- ✅ Helps download and install Flutter SDK
- ✅ Provides code completion (auto-suggestions)
- ✅ Enables hot reload
- ✅ Debugging tools
- ✅ Widget inspector

### **Step 2: Use Command Palette to Install Flutter**

1. **Open Command Palette:**
   - Press: `Ctrl + Shift + P` (Windows)
   - Or: Click menu `View` → `Command Palette`

2. **Type:** `Flutter: New Project`

3. **You'll see a prompt:** "Unable to find Flutter SDK"

4. **Click:** "Download SDK" or "Locate SDK"

5. **Choose location:** Select where to install (recommended: `C:\src\flutter`)

6. **Wait for download:** This will take 5-10 minutes depending on internet speed

7. **Restart VS Code** when prompted

### **Step 3: Verify Installation**

Open a new terminal in VS Code (`Terminal` → `New Terminal`):

```powershell
# Check if Flutter is installed
flutter --version

# Run Flutter doctor to check setup
flutter doctor
```

**Expected Output:**
```
Flutter 3.35.3 • channel stable
Framework • revision xxxxx
Engine • revision xxxxx
Tools • Dart 3.9.2
```

---

## 🎯 Method 2: Manual Installation (Alternative)

If VS Code method doesn't work or you prefer manual control:

### **Step 1: Download Flutter SDK**

1. Visit: https://docs.flutter.dev/get-started/install/windows
2. Click "Download Flutter SDK"
3. Download the ZIP file (about 900 MB)
4. **Extract to:** `C:\src\flutter`
   - ⚠️ **Important:** Do NOT extract to `C:\Program Files\` (permission issues!)
   - ⚠️ **Important:** Avoid paths with spaces!

**Recommended Path Structure:**
```
C:\
└── src\
    └── flutter\
        ├── bin\          ← Contains flutter.bat
        ├── packages\
        ├── examples\
        └── ...
```

### **Step 2: Add Flutter to PATH (Windows)**

#### **Option A: Using PowerShell (Administrator)**

```powershell
# Open PowerShell as Administrator
# Win + X → Windows PowerShell (Admin)

# Add to User PATH
$userPath = [System.Environment]::GetEnvironmentVariable("Path", "User")
$newPath = $userPath + ";C:\src\flutter\bin"
[System.Environment]::SetEnvironmentVariable("Path", $newPath, "User")

# Verify PATH was updated
echo $env:Path
```

#### **Option B: Using Windows GUI (Easier for Beginners)**

1. **Press:** `Win + X`
2. **Select:** "System"
3. **Click:** "Advanced system settings" (right side)
4. **Click:** "Environment Variables" button at bottom
5. **Under "User variables":**
   - Find and select "Path"
   - Click "Edit"
6. **Click:** "New"
7. **Add:** `C:\src\flutter\bin`
8. **Click:** "OK" on all dialogs
9. **Restart VS Code** (important!)

### **Step 3: Verify Installation**

```powershell
# Close and reopen terminal/VS Code first!

# Check Flutter version
flutter --version

# Should show: Flutter 3.35.3 (or newer)
```

---

## 🔧 Run Flutter Doctor

This command checks your entire Flutter setup:

```powershell
flutter doctor
```

**What you'll see:**

```
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.35.3, on Microsoft Windows)
[✗] Android toolchain - develop for Android devices
    ✗ Unable to locate Android SDK
[✓] Chrome - develop for the web
[✓] Visual Studio - develop Windows apps (version 2022)
[✓] VS Code (version 1.95.0)
[✓] Connected device (2 available)
[✓] Network resources

! Doctor found issues in 1 category.
```

**Don't worry about the ✗ marks!** We'll fix them step by step.

---

## 📱 Install Additional Tools (Optional)

### **For Android Development:**

#### **Option A: Install Android Studio (Recommended)**

1. **Download:** https://developer.android.com/studio
2. **Run installer** → Follow default settings
3. **Open Android Studio** → Complete setup wizard
4. **Install Android SDK** (automatically prompted)

#### **Accept Android Licenses:**

```powershell
flutter doctor --android-licenses
```

Type `y` (yes) for all prompts.

### **For Web Development:**

#### **Install Google Chrome:**

1. **Download:** https://www.google.com/chrome/
2. **Install normally**
3. **Verify:**

```powershell
flutter doctor
# Chrome should now show [✓]
```

---

## ✅ Verification Steps

Run these commands to verify everything works:

### **1. Check Flutter Installation:**

```powershell
flutter --version
```

**Expected:** 
```
Flutter 3.35.3 • channel stable
```

### **2. Check Dart Installation:**

```powershell
dart --version
```

**Expected:**
```
Dart SDK version: 3.9.2 (stable)
```

### **3. Run Flutter Doctor:**

```powershell
flutter doctor
```

**Expected:** All checkmarks ✓ (except iOS on Windows - that's normal!)

### **4. List Available Devices:**

```powershell
flutter devices
```

**Expected:**
```
Chrome (web) • chrome • web-javascript • Google Chrome
Windows (desktop) • windows • windows-x64 • Microsoft Windows
```

---

## 🧪 Create Your First Test App

Let's verify Flutter works by creating a simple test app:

```powershell
# Navigate to a temporary folder
cd $env:TEMP

# Create test app
flutter create test_app

# Navigate into the project
cd test_app

# Run on Chrome (fastest for testing)
flutter run -d chrome
```

**What should happen:**

1. ✅ Flutter creates project files (2-3 minutes first time)
2. ✅ Downloads dependencies
3. ✅ Chrome opens automatically
4. ✅ You see a counter app with a "+" button
5. ✅ Clicking "+" increases the counter
6. ✅ In terminal, press `r` to hot reload
7. ✅ Press `q` to quit

**If this works, Flutter is PERFECTLY INSTALLED! 🎉**

---

## 🎯 Configure VS Code for Flutter

### **Essential Extensions (Already Installing):**

1. ✅ **Flutter** (Dart-Code.flutter) - In progress!
2. ✅ **Dart** (Dart-Code.dart-code) - Auto-installed with Flutter

### **Recommended Extensions:**

Open VS Code Extensions (`Ctrl + Shift + X`) and search for:

```
1. Pubspec Assist        (jeroen-meijer.pubspec-assist)
2. Error Lens            (usernamehw.errorlens)
3. Material Icon Theme   (PKief.material-icon-theme)
4. Awesome Flutter Snippets (Nash.awesome-flutter-snippets)
```

**How to Install:**
- Search extension name
- Click "Install"
- Reload VS Code if prompted

### **Configure VS Code Settings:**

1. **Open Settings:** `Ctrl + ,` or `File` → `Preferences` → `Settings`
2. **Search for:** `dart`
3. **Configure these settings:**

```json
{
  // Auto-format on save
  "editor.formatOnSave": true,
  
  // Auto-save files
  "files.autoSave": "afterDelay",
  "files.autoSaveDelay": 1000,
  
  // Flutter/Dart SDK path (update if different)
  "dart.flutterSdkPath": "C:\\src\\flutter",
  
  // Flutter UI guides
  "dart.previewFlutterUiGuides": true,
  "dart.previewFlutterUiGuidesCustomTracking": true,
  
  // Dart analysis
  "dart.lineLength": 80,
  
  // Terminal
  "terminal.integrated.defaultProfile.windows": "PowerShell",
  
  // Editor
  "editor.tabSize": 2,
  "editor.insertSpaces": true,
  "editor.minimap.enabled": true,
  "editor.rulers": [80],
  
  // Breadcrumbs
  "breadcrumbs.enabled": true
}
```

**To apply these:**
1. Press `Ctrl + Shift + P`
2. Type: "Preferences: Open Settings (JSON)"
3. Paste the settings above
4. Save (`Ctrl + S`)

---

## 🆘 Troubleshooting Common Issues

### **Issue 1: "flutter: command not found"**

**Cause:** Flutter not in PATH

**Solution:**
```powershell
# Check if Flutter is in your folder
dir C:\src\flutter\bin\flutter.bat

# If yes, add to PATH (see Step 2 above)
# Then restart VS Code and terminal
```

### **Issue 2: "Unable to locate Android SDK"**

**Solution:** Either:
- Install Android Studio (easiest)
- Or ignore for now (you can develop for web first!)

```powershell
# To develop for web only, you need Chrome:
flutter config --enable-web
```

### **Issue 3: "Version solving failed"**

**Solution:**
```powershell
# Clear pub cache
flutter pub cache repair

# Then try again
flutter pub get
```

### **Issue 4: "Flutter doctor shows red X for Chrome"**

**Solution:**
```powershell
# Install Chrome
# Download from: https://www.google.com/chrome/

# After installing, run:
flutter doctor
```

### **Issue 5: Extension not working in VS Code**

**Solution:**
1. Restart VS Code
2. Reload window: `Ctrl + Shift + P` → "Developer: Reload Window"
3. Check extension is enabled: Extensions view → Flutter should be active

### **Issue 6: "Waiting for another flutter command to release the startup lock"**

**Solution:**
```powershell
# Delete the lock file
del %LOCALAPPDATA%\Pub\Cache\.flutter_tool_state
```

---

## 🎓 Understanding Flutter Doctor

### **What Each Check Means:**

```
[✓] Flutter (Channel stable, 3.35.3)
    → Flutter SDK is installed correctly

[✓] Android toolchain
    → Can build Android apps

[✓] Chrome - develop for the web
    → Can build web apps

[✓] Visual Studio
    → Can build Windows desktop apps

[✓] VS Code (version 1.95.0)
    → Your editor is ready

[✓] Connected device
    → Has devices to run apps on

[✓] Network resources
    → Can download packages
```

### **What to Fix First:**

**Priority 1 (Essential):**
- ✅ Flutter SDK
- ✅ Chrome (for web development)
- ✅ VS Code

**Priority 2 (Can wait):**
- ⏳ Android toolchain (install later if needed)
- ⏳ iOS toolchain (only on Mac)

---

## 📊 Installation Checklist

Check off as you complete each step:

### **Basic Setup:**
- [ ] Flutter extension installed in VS Code
- [ ] Flutter SDK downloaded
- [ ] Flutter added to PATH
- [ ] Restarted VS Code
- [ ] `flutter --version` works
- [ ] `flutter doctor` shows Flutter installed

### **Optional Setup:**
- [ ] Chrome installed
- [ ] Android Studio installed (optional)
- [ ] Android licenses accepted (optional)
- [ ] Recommended VS Code extensions installed

### **Verification:**
- [ ] Created test app successfully
- [ ] Test app runs on Chrome
- [ ] Hot reload works (press `r` in terminal)
- [ ] VS Code shows Flutter commands in Command Palette

---

## 🎯 Expected Timeline

| Task | Time | Difficulty |
|------|------|------------|
| Install Flutter extension | 2 min | ⭐ Easy |
| Download Flutter SDK | 10 min | ⭐ Easy |
| Add to PATH | 5 min | ⭐⭐ Medium |
| Install Chrome | 5 min | ⭐ Easy |
| Run flutter doctor | 2 min | ⭐ Easy |
| Create test app | 10 min | ⭐ Easy |
| Install Android Studio | 30 min | ⭐⭐ Medium |
| **Total** | **30-60 min** | |

---

## ✅ Success Criteria

**You're ready to start coding when:**

1. ✅ `flutter --version` shows version number
2. ✅ `flutter doctor` shows mostly green checkmarks
3. ✅ Test app runs on Chrome successfully
4. ✅ Hot reload works (press `r` changes the app instantly)
5. ✅ VS Code recognizes `.dart` files with syntax highlighting

---

## 🚀 What's Next?

Once Flutter is installed:

1. **Delete test app** (it was just for testing):
   ```powershell
   cd $env:TEMP
   rmdir /s test_app
   ```

2. **Initialize MindShield Flutter project:**
   ```powershell
   cd c:\devKiNG_Projects\06_App_Development\MindShield
   flutter create --org com.rkcbharat --project-name mindshield .
   ```

3. **Start Day 1 Learning:**
   - Open `01_LEARNING_ROADMAP.md`
   - Begin with Dart basics
   - Practice in DartPad: https://dartpad.dev

---

## 📞 Need Help?

### **Official Resources:**
- **Flutter Docs:** https://docs.flutter.dev
- **Flutter Installation Guide:** https://docs.flutter.dev/get-started/install/windows
- **Flutter YouTube:** https://www.youtube.com/@flutterdev

### **Community:**
- **Discord:** https://discord.gg/flutter
- **Reddit:** https://reddit.com/r/FlutterDev
- **Stack Overflow:** Tag questions with `[flutter]`

### **Ask Me:**
- Comment in code: `// QUESTION: Why does this fail?`
- I'll explain in detail!

---

## 🎉 Congratulations!

Once you complete this guide, you'll have:

✅ Flutter SDK installed and working  
✅ VS Code configured for Flutter development  
✅ Verified everything works with test app  
✅ Ready to start building MindShield!  

**You're on your way to becoming a Flutter developer! 🚀**

---

**Created:** October 31, 2025  
**By:** Your AI Programming Mentor  
**For:** Raj Roy (@devKiNGCRiC)  
**Project:** MindShield  
**Next:** Initialize Flutter project and start Day 1!
