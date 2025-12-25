-- LazyVim LSP configuration with inlay hints disabled
return {
  "neovim/nvim-lspconfig",
  opts = {
    -- Disable inlay hints to prevent positioning errors
    inlay_hints = {
      enabled = false,
    },
    -- Configure servers safely
    servers = {
      -- Disable problematic inlay hint features for specific servers
      omnisharp = {
        settings = {
          csharp = {
            inlayHints = {
              enable = false,
            },
          },
        },
      },
      tsserver = {
        settings = {
          typescript = {
            inlayHints = {
              includeInlayParameterNameHints = false,
              includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParameterTypeHints = false,
              includeInlayVariableTypeHints = false,
              includeInlayPropertyDeclarationTypeHints = false,
              includeInlayFunctionLikeReturnTypeHints = false,
              includeInlayEnumMemberValueHints = false,
            },
          },
          javascript = {
            inlayHints = {
              includeInlayParameterNameHints = false,
              includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParameterTypeHints = false,
              includeInlayVariableTypeHints = false,
              includeInlayPropertyDeclarationTypeHints = false,
              includeInlayFunctionLikeReturnTypeHints = false,
              includeInlayEnumMemberValueHints = false,
            },
          },
        },
      },
    },
  },
}