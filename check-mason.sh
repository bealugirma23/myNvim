#!/bin/bash

echo "🔧 Checking Mason status..."

# Check if Mason is installed
echo "✓ Checking Mason installation..."
if nvim --headless -c "lua print('Mason loaded: ' .. (pcall(require, 'mason') and 'yes' or 'no'))" -c "q" 2>/dev/null | grep -q "yes"; then
  echo "✅ Mason is loaded correctly"
else
  echo "❌ Mason failed to load"
  exit 1
fi

# Check installed servers
echo ""
echo "📦 Currently installed servers:"
ls ~/.local/share/nvim/mason/packages/ 2>/dev/null | sed 's/^/  • /' || echo "  No packages installed yet"

echo ""
echo "🚀 Your configured servers will install on first use."
echo "This prevents installation errors during startup."
echo ""
echo "🎯 Configured servers:"
echo "  • typescript-tools / typescript-language-server"
echo "  • eslint_d (JavaScript/TypeScript linting)"
echo "  • tailwindcss (Tailwind CSS)"
echo "  • omnisharp (C#)"
echo "  • dartls (Flutter/Dart)"
echo "  • html, cssls, jsonls (web standards)"
