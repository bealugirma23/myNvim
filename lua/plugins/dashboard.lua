return {
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
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      opts = opts or {}
      opts.theme = "doom"
      opts.config = opts.config or {}

      opts.config.header = {
        "  _________       .__.__                 ",
        " /   _____/ _____ |__|  |   ____ ___  ___",
        " \\_____  \\ /     \\|  |  | _/ __ \\\\  \\/  /",
        " /        \\  Y Y  \\  |  |_\\  ___/ >    < ",
        "/_______  /__|_|  /__|____/\\___  >__/\\_ \\",
        "        \\/      \\/             \\/      \\/",
        "",
        "  clean code. sharp tools. no fluff.",
        "",
      }

      return opts
    end,
  },
}
