local function save_current_buffer()
  local buf = vim.api.nvim_get_current_buf()
  vim.api.nvim_buf_call(buf, function()
    vim.cmd("silent! write")
  end)
end

vim.api.nvim_create_augroup("AutoSave", { clear = true })
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  callback = save_current_buffer,
  pattern = "*",
  group = "AutoSave",
})

-- Disable inlay hints globally to prevent positioning errors
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.defer_fn(function()
      for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        vim.lsp.inlay_hint.enable(buf, false)
      end
    end, 100)
  end,
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    vim.defer_fn(function()
      vim.lsp.inlay_hint.enable(args.buf, false)
    end, 50)
  end,
})
