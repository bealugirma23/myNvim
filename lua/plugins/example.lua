-- Example plugin specification file for LazyVim
-- This file can be used to add, remove, or configure plugins
-- See the comments below for examples of common operations

return {
  -- Example: Add a new plugin
  -- { "some-plugin/their-name.nvim" },

  -- Example: Override the configuration of an existing plugin
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   opts = function(_, opts)
  --     opts.theme = "nord"
  --     return opts
  --   end,
  -- },

  -- Example: Disable a LazyVim default plugin
  -- { "folke/trouble.nvim", enabled = false },

  -- Example: Add additional language support
  -- { import = "lazyvim.plugins.extras.lang.typescript" },
  -- { import = "lazyvim.plugins.extras.lang.json" },

  -- Example: Add more treesitter parsers
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = {
  --     ensure_installed = {
  --       "bash",
  --       "html",
  --       "javascript",
  --       "json",
  --       "lua",
  --       "markdown",
  --       "markdown_inline",
  --       "python",
  --       "tsx",
  --       "typescript",
  --       "vim",
  --       "yaml",
  --     },
  --   },
  -- },
}
