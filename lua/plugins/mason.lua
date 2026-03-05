-- Mason configuration for language servers
return {
  "mason-org/mason.nvim",
  opts = function(_, opts)
    opts = opts or {}
    opts.ui = opts.ui or {}
    opts.ui.icons = opts.ui.icons or {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    }
    -- Ensure non-LSP tools are present
    opts.ensure_installed = opts.ensure_installed or {}
    vim.list_extend(opts.ensure_installed, {
      -- Web
      "eslint_d",
      "prettierd",
      -- Python
      "ruff",
    })
    return opts
  end,
}
