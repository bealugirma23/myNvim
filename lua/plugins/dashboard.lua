return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        [[                ]],
        [[    _.__,  ,__._    ]],
        [[   /   '--'   \   ]],
        [[  /  / |  \  \  ]],
        [[     / | \     ]],
        [[      / \      ]],
        [[               ]],
      }
      return opts
    end,
  },
  {
    "nvim-mini/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts = opts or {}
      opts.scroll = opts.scroll or {}
      opts.scroll.enable = false
      return opts
    end,
  },
  {
    "folke/flash.nvim",
    enabled = false,
  },
  -- Override dashboard header with custom ASCII art using a post-setup approach
}
