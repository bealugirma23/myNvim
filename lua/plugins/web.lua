-- Web development configuration
return {
  -- Tailwind CSS
  {
    "luckasRanarison/tailwind-tools.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {},
  },
  
  -- Formatting with conform.nvim (LazyVim's default formatter)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- Prefer eslint_d fixes first, then prettier
        javascript = { "eslint_d", "prettierd", "prettier" },
        javascriptreact = { "eslint_d", "prettierd", "prettier" },
        typescript = { "eslint_d", "prettierd", "prettier" },
        typescriptreact = { "eslint_d", "prettierd", "prettier" },
        vue = { "prettierd", "prettier" },
        css = { "prettierd", "prettier" },
        scss = { "prettierd", "prettier" },
        less = { "prettierd", "prettier" },
        html = { "prettierd", "prettier" },
        json = { "prettierd", "prettier" },
        jsonc = { "prettierd", "prettier" },
        yaml = { "prettierd", "prettier" },
        markdown = { "prettierd", "prettier" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    },
  },
}
