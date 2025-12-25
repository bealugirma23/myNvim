# 💤 LazyVim - Development Configuration

A comprehensive development configuration for [LazyVim](https://github.com/LazyVim/LazyVim) with support for React, Flutter, C#, and web development.

## 🚀 Features

### React & Web Development
- **React Snippets**: Custom snippets for React components (`rfc`, `rcc`, `ueh`)
- **TypeScript/JavaScript**: Full LSP support with TypeScript
- **Tailwind CSS**: Integrated Tailwind tooling
- **Prettier**: Code formatting for web files
- **ESLint**: Linting and auto-fix on save
- **HTML/CSS/JSON**: Syntax highlighting and LSP support

### Flutter Development
- **Flutter Tools**: Complete Flutter development environment
- **Hot Reload**: Quick development with hot reload/restart
- **Debugger**: DAP integration for debugging
- **Widget Guides**: Visual widget hierarchy
- **Dev Tools**: Integrated Flutter dev tools

### C# & .NET Development
- **Roslyn LSP**: Modern C# language server
- **Omnisharp**: Alternative C# support
- **.NET CLI**: Integrated .NET commands
- **Test Explorer**: Easy test management
- **Inlay Hints**: Enhanced code hints

### Development Extras
- **Git Integration**: Enhanced Git support
- **Project Management**: Quick project switching
- **Better Surround**: Enhanced surround operations
- **Auto Pairs**: Automatic bracket/quote pairing
- **Comment.nvim**: Smart commenting
- **Indent Guides**: Visual indentation guides
- **Folding**: Enhanced code folding

## 📋 Keymaps

### Flutter (`<leader>t`)
- `<leader>tf` - Flutter Run
- `<leader>td` - Flutter Devices
- `<leader>th` - Flutter Hot Reload
- `<leader>tH` - Flutter Hot Restart
- `<leader>tq` - Flutter Quit

### .NET (`<leader>n`)
- `<leader>nb` - .NET Build
- `<leader>nr` - .NET Run
- `<leader>nt` - .NET Test

### Web Development (`<leader>w`)
- `<leader>wf` - Format File
- `<leader>we` - ESLint Fix All

### General (`<leader>p`)
- `<leader>pp` - Projects (Telescope)

## 🛠️ Setup

### Prerequisites
1. **Node.js** (for web development)
2. **Flutter SDK** (for Flutter development)
3. **.NET SDK** (for C# development)
4. **Git** (for version control)

### Installation
1. Clone this configuration to `~/.config/nvim`
2. Open Neovim and let Lazy install the plugins
3. Restart Neovim to complete setup

### Language-Specific Setup

#### React/Web
```bash
npm install -g prettier eslint
```

#### Flutter
```bash
# Install Flutter SDK
# Add to PATH
flutter doctor
```

#### .NET
```bash
# Install .NET SDK
dotnet --version
```

## 📁 Configuration Files

- `lua/plugins/luasnip.lua` - React snippets and LuaSnip config
- `lua/plugins/web.lua` - Web development tools
- `lua/plugins/flutter.lua` - Flutter development setup
- `lua/plugins/dotnet.lua` - C# and .NET configuration
- `lua/plugins/extras.lua` - Additional development tools
- `lua/config/keymaps.lua` - Custom keymaps

## 🎯 React Snippets

Available in TypeScript/JavaScript React files:

- `rfc` - React Functional Component
- `rcc` - React Component with useState
- `ueh` - useEffect hook

## 📚 Documentation

- [LazyVim Documentation](https://lazyvim.github.io/)
- [Flutter Tools Documentation](https://github.com/nvim-flutter/flutter-tools.nvim)
- [Roslyn.nvim Documentation](https://github.com/seblj/roslyn.nvim)
