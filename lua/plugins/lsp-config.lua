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
        on_attach = function(client, bufnr)
          if client.server_capabilities.inlayHintProvider then
            pcall(vim.lsp.inlay_hint.enable, bufnr, false)
          end
        end,
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
        on_attach = function(client, bufnr)
          if client.server_capabilities.inlayHintProvider then
            pcall(vim.lsp.inlay_hint.enable, bufnr, false)
          end
        end,
      },
      dartls = {
        on_attach = function(client, bufnr)
          if client.server_capabilities.inlayHintProvider then
            pcall(vim.lsp.inlay_hint.enable, bufnr, false)
          end
        end,
      },
    },
  },
}