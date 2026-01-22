-- Mason LSP Config
-- https://github.com/mason-org/mason-lspconfig.nvim.git
-- return {
--   "mason-org/mason.lspconfig.nvim",
--   dependencies = { "mason-org/mason.nvim" },
--   opts = {
--     automatic_installation = false, -- Disable automatic installation completely
--   },
-- }

return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = { "lua_ls", "rust_analyzer" },
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
}
