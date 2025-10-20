#!/bin/bash
# Uninstallation script for AppImage GUI Launcher

set -e

echo "============================================"
echo "  AppImage GUI Launcher - Uninstallation"
echo "============================================"
echo ""

# Ask for confirmation
read -p "Are you sure you want to uninstall AppImage GUI Launcher? (y/N): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Uninstallation cancelled."
    exit 0
fi

echo ""
echo "🗑️  Removing AppImage Launcher..."

# Remove the launcher script
if [ -f /usr/local/bin/appimage-launcher ]; then
    sudo rm /usr/local/bin/appimage-launcher
    echo "✓ Removed /usr/local/bin/appimage-launcher"
fi

# Remove the manager script
if [ -f /usr/local/bin/appimage-manager ]; then
    sudo rm /usr/local/bin/appimage-manager
    echo "✓ Removed /usr/local/bin/appimage-manager"
fi

# Remove the desktop files
if [ -f ~/.local/share/applications/appimage-launcher.desktop ]; then
    rm ~/.local/share/applications/appimage-launcher.desktop
    echo "✓ Removed appimage-launcher desktop entry"
fi

if [ -f ~/.local/share/applications/appimage-manager.desktop ]; then
    rm ~/.local/share/applications/appimage-manager.desktop
    echo "✓ Removed appimage-manager desktop entry"
fi

# Reset default handler for AppImage files
xdg-mime default '' application/x-iso9660-appimage 2>/dev/null
echo "✓ Reset default handler for AppImage files"

# Update desktop database
update-desktop-database ~/.local/share/applications/ 2>/dev/null
echo "✓ Desktop database updated"

echo ""
echo "============================================"
echo "  ✅ Uninstallation completed!"
echo "============================================"
echo ""
echo "📂 Note: Your AppImages in ~/Applications were not deleted."
echo "   You can manually remove them if needed."
echo ""
echo "📝 Desktop shortcuts in ~/.local/share/applications/ for"
echo "   individual AppImages were also not removed."
echo "   You can manually delete them if needed."
echo ""
