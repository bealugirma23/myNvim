-- LSP configuration to handle inlay hint errors
return {
  "neovim/nvim-lspconfig",
  opts = {
    -- Global inlay hint configuration
    inlay_hints = {
      enabled = false,
    },
    setup = {
      -- Disable inlay hints for servers that cause positioning errors
      omnisharp = function(_, _)
        vim.lsp.inlay_hint.enable(0, false)
      end,
      dartls = function(_, _)
        vim.lsp.inlay_hint.enable(0, false)
      end,
      tsserver = function(_, _)
        vim.lsp.inlay_hint.enable(0, false)
      end,
    },
  },
}