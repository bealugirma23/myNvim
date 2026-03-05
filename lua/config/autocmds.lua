local function save_current_buffer()
  local buf = vim.api.nvim_get_current_buf()
  if not vim.api.nvim_buf_is_loaded(buf) then
    return
  end
  if vim.bo[buf].buftype ~= "" or not vim.bo[buf].modifiable then
    return
  end
  local name = vim.api.nvim_buf_get_name(buf)
  if name == "" or name:match("^%s*$") then
    return
  end
  vim.api.nvim_buf_call(buf, function()
    vim.cmd("silent! write")
  end)
end

vim.api.nvim_create_augroup("AutoSave", { clear = true })
vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost" }, {
  callback = save_current_buffer,
  pattern = "*",
  group = "AutoSave",
})

-- Flutter: hot reload on save for Dart files
vim.api.nvim_create_augroup([[FlutterHotReloadOnSave]], { clear = true })
vim.api.nvim_create_autocmd([[BufWritePost]], {
  group = [[FlutterHotReloadOnSave]],
  callback = function()
    if vim.bo.buftype ~= [[ ]] then return end
    if vim.bo.filetype ~= [[dart]] then return end
    local has_cmd = function(cmd) return vim.fn.exists([[:]] .. cmd) == 2 end
    if has_cmd([[FlutterHotReload]]) then vim.cmd([[FlutterHotReload]])
    elseif has_cmd([[FlutterReload]]) then vim.cmd([[FlutterReload]]) end
  end,
})
