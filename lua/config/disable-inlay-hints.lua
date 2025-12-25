-- Completely disable inlay hints to prevent positioning errors
vim.lsp.inlay_hint = vim.lsp.inlay_hint or {}
vim.lsp.inlay_hint.enable = function(bufnr, enabled)
  -- Do nothing - completely disable inlay hints
end