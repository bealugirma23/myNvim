-- LazyVim LSP configuration with inlay hints disabled
-- Note: C# OmniSharp config moved to LazyVim csharp extra
return {
  "neovim/nvim-lspconfig",
  opts = {
    -- Keep server-specific tweaks minimal; inlay hints are disabled globally elsewhere
    servers = {
      dart = {
        cmd = { "dart", "language-server", "--protocol=lsp" },
        settings = {
          dart = {
            completeFunctionCalls = true,
            showTodos = true,
          },
        },
      },
    },
  },
}
