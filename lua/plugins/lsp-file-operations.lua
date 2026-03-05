return {
  [[antosha417/nvim-lsp-file-operations]],
  dependencies = {
    [[nvim-lua/plenary.nvim]],
    -- Integrates with neo-tree events; present in this config
    [[nvim-neo-tree/neo-tree.nvim]],
  },
  config = function()
    require([[lsp-file-operations]]).setup()
  end,
}
