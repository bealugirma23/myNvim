return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require("which-key")
    -- Fully remove ALL insert-mode triggers
    wk.setup({
      triggers = {
        { "<auto>", mode = { "n", "v", "o", "x" } },
      },
    })
    local function update_starter_header()
      local ok, starter = pcall(require, "mini.starter")
      if not ok then
        return
      end

      -- Create new logo
      local logo = table.concat({
        "  ____               ____  _   _ _____  _      ",
        " |  _ \\ ___  ___ ___|  _ \\| |_| |___ / (_) ___ ",
        " | |_) / _ \\/ __/ _ \\ |_) | __| | |_ \\ | |/ __|",
        " |  _ <  __/ (_|  __/  _ <| |_| |___) | | (__ ",
        " |_| \\_\\___|\\___\\___|_| \\_\\\\__|_|____/ |_|\\___|",
        "             Rose Pine Development              ",
      }, "\n")

      -- Update the config if it exists
      if starter.config then
        starter.config.header = logo
      end
    end

    -- Try to update immediately and also on dashboard open
    update_starter_header()

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "ministarter",
      callback = update_starter_header,
    })
  end,
}
