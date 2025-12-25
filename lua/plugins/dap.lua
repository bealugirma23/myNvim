-- Debug Adapter Protocol configuration
return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")
    
    -- Basic configuration to prevent errors
    dap.defaults.fallback.terminal_win_cmd = function()
      return vim.cmd("new")
    end
  end,
}