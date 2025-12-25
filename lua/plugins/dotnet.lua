-- C# development configuration
return {
  -- .NET CLI tools integration
  {
    "GustavEikaas/easy-dotnet.nvim",
    ft = { "cs", "vb", "csx", "cake" },
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    config = function()
      require("easy-dotnet").setup({
        -- Path to the dotnet CLI, leave as nil to use the one in PATH
        dotnet_cli_path = nil,
        -- Test explorer settings
        test_project_pattern = "*.Tests.csproj",
        -- Solution file patterns
        solution_patterns = { "*.sln" },
      })
    end,
  },
  
  -- Additional C# syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "c_sharp", "xml", "json" },
    },
  },
  
  -- Manual LSP configuration for C# (if .NET SDK is installed)
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        omnisharp = function()
          -- Disable inlay hints for omnisharp to prevent errors
          vim.lsp.inlay_hint.enable(0, false)
        end,
      },
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
        },
      },
    },
  },
}