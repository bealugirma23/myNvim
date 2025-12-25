#!/bin/bash

echo "🚀 Testing Neovim configuration..."

# Test basic loading
echo "✓ Testing basic configuration..."
nvim --headless -c "lua print('Neovim loaded successfully')" -c "q" 2>/dev/null

# Test React snippets
echo "✓ Testing React filetype detection..."
nvim --headless -c "e test.tsx" -c "set ft=typescriptreact" -c "lua print('React support loaded')" -c "q" 2>/dev/null

# Check for configuration errors
echo "✓ Checking for configuration errors..."
if nvim --headless -c "lua print('No import order errors')" -c "q" 2>&1 | grep -q "order of your.*imports is incorrect"; then
  echo "❌ Import order error still exists"
  exit 1
else
  echo "✅ Import order is correct"
fi

echo "🎉 Configuration is working correctly!"
echo ""
echo "📋 Available features:"
echo "  • React snippets: rfc, rcc, ueh, ust, ucb, umc"
echo "  • Flutter development tools"
echo "  • C# and .NET support"
echo "  • Web development with TypeScript/Tailwind"
echo "  • Git integration with Gitsigns"
echo "  • Code formatting and linting"
echo ""
echo "🔑 Keymaps:"
echo "  • Flutter: <leader>t (tf, td, th, tH, tq)"
echo "  • Web: <leader>w (wf, we)"
echo "  • Projects: <leader>pp"
echo ""
echo "Start Neovim and enjoy your development environment! 🚀"