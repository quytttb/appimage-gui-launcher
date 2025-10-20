#!/bin/bash
# Quick script to push to GitHub

echo "╔════════════════════════════════════════════════════════════════╗"
echo "║   Push AppImage GUI Launcher to GitHub                        ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""

read -p "Enter your GitHub username: " github_username

if [ -z "$github_username" ]; then
    echo "❌ Username cannot be empty!"
    exit 1
fi

echo ""
echo "📝 Setting up remote..."
git remote add origin "https://github.com/$github_username/appimage-gui-launcher.git" 2>/dev/null || \
git remote set-url origin "https://github.com/$github_username/appimage-gui-launcher.git"

echo "✓ Remote configured"
echo ""
echo "🚀 Pushing to GitHub..."
echo ""

git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "╔════════════════════════════════════════════════════════════════╗"
    echo "║   ✅ Successfully pushed to GitHub!                           ║"
    echo "╚════════════════════════════════════════════════════════════════╝"
    echo ""
    echo "🌐 View your repository at:"
    echo "   https://github.com/$github_username/appimage-gui-launcher"
    echo ""
    echo "📖 Next steps:"
    echo "   - Add a description on GitHub"
    echo "   - Add topics/tags"
    echo "   - Create a release (optional)"
    echo "   - Share with the community!"
    echo ""
else
    echo ""
    echo "❌ Push failed!"
    echo ""
    echo "Common issues:"
    echo "1. Repository doesn't exist on GitHub"
    echo "   → Create it at: https://github.com/new"
    echo ""
    echo "2. Authentication failed"
    echo "   → Use Personal Access Token instead of password"
    echo "   → Generate at: https://github.com/settings/tokens"
    echo ""
    echo "3. Already pushed"
    echo "   → Use: git push origin main"
    echo ""
fi
