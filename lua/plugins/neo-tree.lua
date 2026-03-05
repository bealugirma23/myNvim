return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          -- Keep normal filtering, but always surface .env files
          visible = true, -- show filtered items in a faded style
          hide_dotfiles = true,
          hide_gitignored = true,
          always_show = { ".env" },
          -- Also match common variants like .env.local, .env.development, etc.
          always_show_by_pattern = { "^%.env%..+" },
        },
      },
    },
  },
}

