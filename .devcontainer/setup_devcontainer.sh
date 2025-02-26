#!/bin/bash

echo "📜 Adjusting permissions for command history..."
sudo chown -R $(whoami): /commandhistory
echo ""

echo "🔧 Granting execute permissions to scripts..."
chmod +x .devcontainer/install_zsh_plugins.sh
chmod +x .devcontainer/install_python_dependencies.sh
chmod +x .devcontainer/install_pre-commit_hooks.sh
echo ""

echo "🚀 Running Zsh plugin installation script..."
.devcontainer/install_zsh_plugins.sh
echo ""

echo "🐍 Installing Python dependencies..."
.devcontainer/install_python_dependencies.sh
echo ""

echo "🛠️ Installing and configuring pre-commit hooks..."
.devcontainer/install_pre-commit_hooks.sh
echo ""

echo "🎉 DevContainer setup complete!"
