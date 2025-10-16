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

**AppImage GUI Launcher** là một công cụ đơn giản giúp bạn chạy và tích hợp file AppImage vào hệ thống Ubuntu/Linux thông qua giao diện đồ họa (GUI) - không cần dùng dòng lệnh!

## ✨ Tính năng

- 🖱️ **Click đúp để chạy** - Tự động hiện dialog khi mở file .AppImage
- 🎯 **3 chế độ hoạt động:**
  - Chạy một lần (không lưu vào hệ thống)
  - Tích hợp vào menu ứng dụng
  - Di chuyển vào ~/Applications và tích hợp
- 📱 **Tích hợp menu** - Tạo shortcut trong menu ứng dụng tự động
- 🗂️ **Quản lý tập trung** - Tất cả AppImage được lưu ở ~/Applications
- 💻 **Giao diện đẹp** - Sử dụng Zenity cho dialog đẹp mắt

## 📸 Screenshots

Khi bạn click đúp vào file .AppImage, một dialog sẽ hiện ra:

```
┌─────────────────────────────────────────┐
│        AppImage Launcher                │
├─────────────────────────────────────────┤
│ Bạn muốn làm gì với file AppImage này?  │
│                                         │
│ ○ Chạy một lần                          │
│ ○ Tích hợp vào hệ thống và chạy        │
│ ○ Di chuyển vào ~/Applications          │
│                                         │
│         [OK]        [Cancel]            │
└─────────────────────────────────────────┘
```

## 🚀 Cài đặt

### Yêu cầu hệ thống

- Ubuntu 20.04+ (hoặc các distro tương thích)
- GNOME Desktop Environment
- Zenity (thường được cài sẵn)
- FUSE3

### Cài đặt tự động

```bash
git clone https://github.com/haiquy/appimage-gui-launcher.git
cd appimage-gui-launcher
chmod +x install.sh
./install.sh
```

### Cài đặt thủ công

```bash
# 1. Cài đặt dependencies
sudo apt-get install -y zenity fuse3 libappimage1.0abi1t64

# 2. Copy script
sudo cp appimage-launcher /usr/local/bin/
sudo chmod +x /usr/local/bin/appimage-launcher

# 3. Copy desktop file
cp appimage-launcher.desktop ~/.local/share/applications/

# 4. Update database và thiết lập mặc định
update-desktop-database ~/.local/share/applications/
xdg-mime default appimage-launcher.desktop application/x-iso9660-appimage
```

## 📖 Sử dụng

### Cách 1: Click đúp (Khuyên dùng)

1. Tải file .AppImage về
2. Click đúp vào file
3. Chọn hành động bạn muốn
4. Xong!

### Cách 2: Click phải

1. Click phải vào file .AppImage
2. Chọn "Open With" → "AppImage Launcher"
3. Chọn hành động
4. Xong!

### Cách 3: Từ terminal (nếu cần)

```bash
appimage-launcher /path/to/your-app.AppImage
```

## 🗂️ Cấu trúc thư mục

```
~/.local/share/applications/    # Desktop entries (shortcuts)
~/Applications/                 # Nơi lưu trữ AppImage (khuyên dùng)
```

## 🔧 Gỡ cài đặt

```bash
chmod +x uninstall.sh
./uninstall.sh
```

Hoặc thủ công:

```bash
sudo rm /usr/local/bin/appimage-launcher
rm ~/.local/share/applications/appimage-launcher.desktop
xdg-mime default '' application/x-iso9660-appimage
update-desktop-database ~/.local/share/applications/
```

## ❓ FAQ

**Q: Tại sao không dùng AppImageLauncher?**  
A: AppImageLauncher v2.2.0 (2020) không tương thích tốt với Ubuntu 24.04 và có thể gây lỗi. Tool này đơn giản hơn và hoạt động ổn định.

**Q: Tool này có hoạt động với tất cả AppImage không?**  
A: Có, miễn là file AppImage của bạn tương thích với hệ thống.

**Q: Tôi có thể gỡ AppImage đã cài không?**  
A: Có, chỉ cần xóa file .AppImage và file .desktop tương ứng trong ~/.local/share/applications/

**Q: Tool này có hoạt động trên distro khác không?**  
A: Có, nếu distro đó có Zenity và GNOME/GTK environment.

## 🤝 Đóng góp

Mọi đóng góp đều được hoan nghênh! Vui lòng:

1. Fork repository
2. Tạo branch mới (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Mở Pull Request

## 📝 License

Dự án này được phát hành dưới giấy phép MIT License - xem file [LICENSE](LICENSE) để biết thêm chi tiết.

## 🙏 Credits

- Inspired by [AppImageLauncher](https://github.com/TheAssassin/AppImageLauncher)
- Built for Ubuntu/Linux users who want simple GUI integration

## 📧 Liên hệ

Nếu bạn có câu hỏi hoặc góp ý, vui lòng mở issue trên GitHub.

---

**Made with ❤️ for Linux community**
