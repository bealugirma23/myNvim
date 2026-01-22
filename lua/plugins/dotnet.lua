-- C# development configuration
return {
  -- .NET CLI tools integration
  {
    "GustavEikaas/easy-dotnet.nvim",
    ft = { "cs", "vb", "csx", "cake" },
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    config = function()
      require("easy-dotnet").setup({
        -- Path to the dotnet CLI, leave as nil to use the path in PATH
        dotnet_cli_path = nil,
        -- Test explorer settings
        test_project_pattern = "*.Tests.csproj",
        -- Solution file patterns
        solution_patterns = { "*.sln" },
      })
    end,
  },

  -- Manual LSP configuration for C# (if .NET SDK is installed)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Only configure omnisharp if it's manually installed
        omnisharp = {
          enabled = vim.fn.executable("dotnet") == 1,
          settings = {
            csharp = {
              inlayHints = {
                enable = false, -- Disable inlay hints
              },
            },
          },
          on_attach = function(client, bufnr)
            if client.server_capabilities.inlayHintProvider then
              pcall(vim.lsp.inlay_hint.enable, bufnr, false)
            end
          end,
        },
      },
    },
  },
}