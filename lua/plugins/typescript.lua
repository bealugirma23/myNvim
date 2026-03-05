-- Make sure we align with LazyVim's typescript-tools setup and avoid tsserver-specific config
return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts = opts or {}
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "typescript-language-server" })
    end,
  },
}
