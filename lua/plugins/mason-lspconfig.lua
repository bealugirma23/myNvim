-- Mason LSP Config
return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "dart" },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig", 
	},
}
