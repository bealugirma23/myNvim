-- Debug Adapter Protocol configuration for Dart & Flutter
return {
  [[mfussenegger/nvim-dap]],
  dependencies = {
    [[rcarriga/nvim-dap-ui]],
    [[theHamsta/nvim-dap-virtual-text]],
    [[nvim-neotest/nvim-nio]],
  },
  config = function()
    local ok_dap, dap = pcall(require, [[dap]])
    if not ok_dap then return end

    dap.defaults.fallback.terminal_win_cmd = function()
      return vim.cmd([[new]])
    end

    local ok_ui, dapui = pcall(require, [[dapui]])
    if ok_ui and type(dapui.setup) == type(function() end) then
      dapui.setup({
        controls = { enabled = true, element = [[repl]] },
        layouts = {
          { elements = { [[scopes]], [[breakpoints]], [[stacks]] }, size = 40, position = [[left]] },
          { elements = { [[repl]], [[console]] }, size = 10, position = [[bottom]] },
        },
      })
      dap.listeners.after.event_initialized[ [[dapui_config]] ] = function() dapui.open() end
      dap.listeners.before.event_terminated[ [[dapui_config]] ] = function() dapui.close() end
      dap.listeners.before.event_exited[ [[dapui_config]] ] = function() dapui.close() end
    end

    local ok_vt, vt = pcall(require, [[nvim-dap-virtual-text]])
    if ok_vt and type(vt.setup) == type(function() end) then
      vt.setup()
    end
  end,
}
