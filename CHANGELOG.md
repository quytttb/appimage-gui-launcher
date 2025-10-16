# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2025-10-16

### Added
- Initial release of AppImage GUI Launcher
- GUI dialog for AppImage integration (using Zenity)
- Three operation modes:
  - Run once without integration
  - Integrate at current location
  - Move to ~/Applications and integrate
- Automatic desktop entry creation
- Double-click support for .AppImage files
- Installation and uninstallation scripts
- Comprehensive README with usage instructions
- MIT License

### Features
- Simple GUI interface for AppImage management
- No need for command line usage
- Automatic MIME type association
- Desktop shortcut creation
- Organized AppImage storage in ~/Applications

### Dependencies
- zenity (for GUI dialogs)
- fuse3 (for AppImage execution)
- libappimage1.0abi1t64 (AppImage library)

### Compatibility
- Ubuntu 20.04+
- Debian-based distributions
- GNOME Desktop Environment
