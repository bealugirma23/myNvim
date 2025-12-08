-- lua/plugins/flutter.lua
return {
  "nvim-flutter/flutter-tools.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- Optional, but highly recommended for vim.ui.select
  },
  config = function()
    require("flutter-tools").setup({
      -- Your flutter-tools configuration options go here
      -- For example:
      -- flutter_path = nil, -- Automatically detected by default
      -- flutter_lookup_cmd = "asdf where flutter", -- If using asdf
      -- fvm = false,
      -- debugger = {
      --   enabled = true,
      --   register_configurations = function(paths)
      --     local dap = require("dap")
      --     dap.configurations.dart = {}
      --     require("dap.ext.vscode").load_launchjs()
      --   end,
      -- },
    })
  end,
}
