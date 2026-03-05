return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      opts = opts or {}
      opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
        -- Include hidden files in searches, but still respect .gitignore
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden",
          "--glob",
          "!.git/*",
        },
      })

      opts.pickers = vim.tbl_deep_extend("force", opts.pickers or {}, {
        -- Make find_files show dotfiles like .env by default
        find_files = { hidden = true, follow = true, no_ignore = false, no_ignore_parent = false },
      })

      return opts
    end,
  },
}

