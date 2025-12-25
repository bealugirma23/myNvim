-- Flutter development configuration
return {
  "nvim-flutter/flutter-tools.nvim",
  ft = { "dart" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- Optional, but highly recommended for vim.ui.select
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("flutter-tools").setup({
      flutter_path = nil, -- Automatically detected by default
      flutter_lookup_cmd = "flutter doctor -v", -- Command to find Flutter installation
      fvm = false, -- Set to true if using Flutter Version Management
      widget_guides = {
        enabled = true,
      },
      dev_log = {
        enabled = true,
        open_cmd = "tab split", -- Command to open the dev log
      },
      dev_tools = {
        autostart = false, -- Start dev tools automatically
        auto_open_browser = false, -- Open browser automatically
      },
      outline = {
        open_cmd = "30vsplit", -- Command to open the outline
        auto_open = true, -- Open outline automatically
      },
      lsp = {
        color = {
          enabled = true,
          background = true,
          background_color = nil,
          foreground = false,
          virtual_text = true,
        },
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
          analysisExcludedFolders = {
            "${workspaceFolder}/.flutter",
            "${workspaceFolder}/.dart_tool",
          },
        },
      },
    })
  end,
}
