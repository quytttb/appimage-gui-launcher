# 🚀 Hướng dẫn đẩy lên GitHub

Repository đã được tạo thành công tại: `~/appimage-gui-launcher`

## Các bước tiếp theo:

### 1. Tạo repository mới trên GitHub

Truy cập: https://github.com/new

- Repository name: `appimage-gui-launcher`
- Description: `Simple GUI launcher for AppImage files on Ubuntu/Linux`
- Chọn: **Public** (hoặc Private nếu muốn)
- **KHÔNG** chọn "Add README" (vì đã có sẵn)
- Click **Create repository**

### 2. Kết nối với GitHub repository

Sau khi tạo repo, chạy các lệnh sau:

```bash
cd ~/appimage-gui-launcher

# Thêm remote origin (thay YOUR_USERNAME bằng username GitHub của bạn)
git remote add origin https://github.com/YOUR_USERNAME/appimage-gui-launcher.git

# Hoặc nếu dùng SSH:
# git remote add origin git@github.com:YOUR_USERNAME/appimage-gui-launcher.git

# Push code lên GitHub
git push -u origin main
```

### 3. Xác thực GitHub

Nếu được yêu cầu đăng nhập:
- Username: YOUR_GITHUB_USERNAME
- Password: Sử dụng **Personal Access Token** (không phải password thông thường)

#### Tạo Personal Access Token:
1. Vào: https://github.com/settings/tokens
2. Click "Generate new token (classic)"
3. Chọn scope: `repo` (full control)
4. Click "Generate token"
5. Copy token và dùng làm password khi push

### 4. Xác nhận

Sau khi push thành công, truy cập:
```
https://github.com/YOUR_USERNAME/appimage-gui-launcher
```

## 📋 Cấu trúc Repository

```
appimage-gui-launcher/
├── README.md                    # Documentation chính
├── LICENSE                      # MIT License
├── CHANGELOG.md                 # Lịch sử thay đổi
├── CONTRIBUTING.md              # Hướng dẫn đóng góp
├── .gitignore                   # Ignore files
├── appimage-launcher            # Script chính
├── appimage-launcher.desktop    # Desktop entry
├── install.sh                   # Script cài đặt
└── uninstall.sh                # Script gỡ cài đặt
```

## 🎯 Tiếp theo có thể làm:

1. **Thêm GitHub Actions** cho CI/CD
2. **Tạo releases** và tags
3. **Thêm badges** vào README
4. **Viết Wiki** chi tiết hơn
5. **Thêm screenshots** thực tế
6. **Tạo website** với GitHub Pages

## 📧 Chia sẻ

Sau khi push lên GitHub, bạn có thể:
- Chia sẻ link repo với cộng đồng
- Submit lên r/linux, r/Ubuntu
- Đăng trên Linux forums
- Chia sẻ trên social media

---

**Repository đã sẵn sàng để push lên GitHub! 🎉**
