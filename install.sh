#!/bin/bash
# Installation script for AppImage GUI Launcher

set -e

echo "============================================"
echo "  AppImage GUI Launcher - Installation"
echo "============================================"
echo ""

# Check if running on a supported system
if ! command -v apt-get &> /dev/null; then
    echo "⚠️  Warning: This script is designed for Debian/Ubuntu systems."
    echo "   You may need to manually install dependencies on your system."
    echo ""
fi

# Check if zenity is installed
echo "📦 Checking dependencies..."
if ! command -v zenity &> /dev/null; then
    echo "Installing zenity..."
    sudo apt-get update
    sudo apt-get install -y zenity
else
    echo "✓ zenity is already installed"
fi

# Check if fuse3 is installed
if ! dpkg -l | grep -q fuse3; then
    echo "Installing fuse3..."
    sudo apt-get install -y fuse3
else
    echo "✓ fuse3 is already installed"
fi

# Check if libappimage is installed
if ! dpkg -l | grep -q libappimage; then
    echo "Installing libappimage..."
    sudo apt-get install -y libappimage1.0abi1t64
else
    echo "✓ libappimage is already installed"
fi

echo ""
echo "📝 Installing AppImage Launcher..."

# Copy the launcher script
sudo cp appimage-launcher /usr/local/bin/
sudo chmod +x /usr/local/bin/appimage-launcher
echo "✓ Script installed to /usr/local/bin/appimage-launcher"

# Copy the manager script
sudo cp appimage-manager /usr/local/bin/
sudo chmod +x /usr/local/bin/appimage-manager
echo "✓ AppImage Manager installed to /usr/local/bin/appimage-manager"

# Copy the desktop files
mkdir -p ~/.local/share/applications
cp appimage-launcher.desktop ~/.local/share/applications/
cp appimage-manager.desktop ~/.local/share/applications/
echo "✓ Desktop entries installed to ~/.local/share/applications/"

# Update desktop database
update-desktop-database ~/.local/share/applications/ 2>/dev/null
echo "✓ Desktop database updated"

# Set as default handler for AppImage files
xdg-mime default appimage-launcher.desktop application/x-iso9660-appimage
echo "✓ Set as default handler for AppImage files"

# Create Applications directory
mkdir -p ~/Applications
echo "✓ Created ~/Applications directory"

echo ""
echo "============================================"
echo "  ✅ Installation completed successfully!"
echo "============================================"
echo ""
echo "📖 How to use:"
echo "   1. Download an AppImage file"
echo "   2. Double-click on it"
echo "   3. Choose an action from the dialog"
echo "   4. Done!"
echo ""
echo "📂 Your AppImages will be stored in: ~/Applications"
echo "🗂️  Shortcuts will be created in: ~/.local/share/applications/"
echo ""
echo "To uninstall, run: ./uninstall.sh"
echo ""
