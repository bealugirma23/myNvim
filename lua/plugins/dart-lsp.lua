-- Dart/Flutter LSP configuration
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      dartls = {
        cmd = { "dart", "language-server", "--protocol=lsp" },
        filetypes = { "dart" },
        root_dir = function(fname)
          return require("lspconfig.util").root_pattern("pubspec.yaml")(fname) or
                 require("lspconfig.util").root_pattern(".git")(fname) or
                 vim.fn.getcwd()
        end,
        init_options = {
          onlyAnalyzeProjectsWithOpenFiles = true,
          suggestFromUnimportedLibraries = true,
          closingLabels = true,
          outline = true,
          flutterOutline = true,
        },
        settings = {
          dart = {
            completeFunctionCalls = true,
            showTodos = true,
            analysisExcludedFolders = {
              "${workspaceFolder}/.flutter",
              "${workspaceFolder}/.dart_tool",
            },
          },
        },
      },
    },
  },
}