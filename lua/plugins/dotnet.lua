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
        -- Disable built-in Roslyn LSP - using OmniSharp via LazyVim instead
        lsp = {
          enabled = false,
          preload_roslyn = false,
        },
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
  -- Note: OmniSharp LSP is now handled by lazyvim.plugins.extras.lang.csharp
}
