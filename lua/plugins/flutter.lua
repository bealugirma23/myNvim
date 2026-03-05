-- Flutter development configuration
return {
  "nvim-flutter/flutter-tools.nvim",
  lazy = false, -- Load immediately to ensure LSP starts
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim",
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
      dev_tools = { autostart = true, auto_open_browser = false },
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
        on_attach = function(client, bufnr)
          -- Ensure keymaps are set
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Go to definition" })
          vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "Hover" })
        end,
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
          analysisExcludedFolders = {
            "${workspaceFolder}/.flutter",
            "${workspaceFolder}/.dart_tool",
          },
        },
      },
      debugger = { enabled = true, run_via_dap = true },
    })
  end,
}
