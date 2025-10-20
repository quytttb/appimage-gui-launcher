# AppImage GUI Launcher

<p align="center">
  <img src="https://img.shields.io/badge/Platform-Linux-blue?style=flat-square" alt="Platform">
  <img src="https://img.shields.io/badge/Ubuntu-24.04-orange?style=flat-square" alt="Ubuntu">
  <img src="https://img.shields.io/badge/License-MIT-green?style=flat-square" alt="License">
</p>

<p align="center">
  <a href="README.md">🇻🇳 Tiếng Việt</a> •
  <a href="README.en.md">🇬🇧 English</a>
</p>

**AppImage GUI Launcher** is a simple tool that helps you run and integrate AppImage files into your Ubuntu/Linux system through a graphical interface (GUI) - no command line needed!

## ✨ Features

- 🖱️ **Double-click to run** - Automatically shows a dialog when opening .AppImage files
- 🎯 **3 operation modes:**
  - Run once (without system integration)
  - Integrate into application menu
  - Move to ~/Applications and integrate
- 📱 **Menu integration** - Automatically creates shortcuts in the application menu
- 🗂️ **Centralized management** - All AppImages stored in ~/Applications
- �️ **Easy uninstallation** - AppImage Manager helps remove installed AppImages via GUI
- 🧹 **Auto cleanup** - Remove invalid desktop entries
- �💻 **Beautiful interface** - Uses Zenity for clean dialogs

## 📸 Screenshots

When you double-click on an .AppImage file, a dialog will appear:

```
┌─────────────────────────────────────────┐
│        AppImage Launcher                │
├─────────────────────────────────────────┤
│ What do you want to do with this       │
│ AppImage?                               │
│                                         │
│ ○ Run once                              │
│ ○ Integrate and run                    │
│ ○ Move to ~/Applications               │
│                                         │
│         [OK]        [Cancel]            │
└─────────────────────────────────────────┘
```

## 🚀 Installation

### System Requirements

- Ubuntu 20.04+ (or compatible distributions)
- GNOME Desktop Environment
- Zenity (usually pre-installed)
- FUSE3

### Automatic Installation

```bash
git clone https://github.com/quytttb/appimage-gui-launcher.git
cd appimage-gui-launcher
chmod +x install.sh
./install.sh
```

### Manual Installation

```bash
# 1. Install dependencies
sudo apt-get install -y zenity fuse3 libappimage1.0abi1t64

# 2. Copy script
sudo cp appimage-launcher /usr/local/bin/
sudo chmod +x /usr/local/bin/appimage-launcher

# 3. Copy desktop file
cp appimage-launcher.desktop ~/.local/share/applications/

# 4. Update database and set as default
update-desktop-database ~/.local/share/applications/
xdg-mime default appimage-launcher.desktop application/x-iso9660-appimage
```

## 📖 Usage

### Method 1: Double-click (Recommended)

1. Download an AppImage file
2. Double-click on it
3. Choose the action you want
4. Done!

### Method 2: Right-click

1. Right-click on the .AppImage file
2. Select "Open With" → "AppImage Launcher"
3. Choose an action
4. Done!

### Method 3: From terminal (if needed)

```bash
appimage-launcher /path/to/your-app.AppImage
```

## �️ Uninstalling AppImages

### Method 1: Using AppImage Manager (Recommended)

1. Open **AppImage Manager** from the application menu (System → AppImage Manager)
2. Select "Uninstall AppImage"
3. Choose the AppImage you want to remove
4. Confirm → Done!

### Method 2: From terminal

```bash
# Open AppImage Manager
appimage-manager

# Or uninstall directly
appimage-manager --uninstall /path/to/app.AppImage
```

### Method 3: Manual

```bash
# Remove AppImage file
rm ~/Applications/app-name.AppImage

# Remove desktop entry
rm ~/.local/share/applications/app-name.desktop

# Update database
update-desktop-database ~/.local/share/applications/
```

## 🧹 System Cleanup

AppImage Manager also has a feature to clean up invalid desktop entries (when AppImage files have been deleted but shortcuts remain):

1. Open **AppImage Manager**
2. Select "Clean invalid desktop entries"
3. Done!

## �🗂️ Directory Structure

```
~/.local/share/applications/    # Desktop entries (shortcuts)
~/Applications/                 # AppImage storage location (recommended)
```

## 🔧 Uninstallation

```bash
chmod +x uninstall.sh
./uninstall.sh
```

Or manually:

```bash
sudo rm /usr/local/bin/appimage-launcher
rm ~/.local/share/applications/appimage-launcher.desktop
xdg-mime default '' application/x-iso9660-appimage
update-desktop-database ~/.local/share/applications/
```

## ❓ FAQ

**Q: Why not use AppImageLauncher?**  
A: AppImageLauncher v2.2.0 (2020) is not fully compatible with Ubuntu 24.04 and may cause errors. This tool is simpler and more stable.

**Q: Does this work with all AppImages?**  
A: Yes, as long as the AppImage is compatible with your system.

**Q: Can I uninstall integrated AppImages?**  
A: Yes, just delete the .AppImage file and the corresponding .desktop file in ~/.local/share/applications/

**Q: Does this work on other distributions?**  
A: Yes, if the distribution has Zenity and a GNOME/GTK environment.

## 🤝 Contributing

All contributions are welcome! Please:

1. Fork the repository
2. Create a new branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is released under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Credits

- Inspired by [AppImageLauncher](https://github.com/TheAssassin/AppImageLauncher)
- Built for Ubuntu/Linux users who want simple GUI integration

## 📧 Contact

If you have questions or feedback, please open an issue on GitHub.

---

**Made with ❤️ for the Linux community**
