-- Single source of truth: disable inlay hints cleanly
return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
  },
}
