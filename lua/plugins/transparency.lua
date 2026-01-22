-- lua/plugins/transparency.lua
return {
  "xiyaowong/transparent.nvim",
  lazy = false, -- Important: Do not lazy load
  config = function()
    require("transparent").setup({
      -- Optional configuration here
      -- extra_groups = { 'Pmenu', 'CocFloating' }, -- Add groups to be transparent
      -- excludes = { 'LineNr' }, -- Exclude groups from being transparent
    })
  end,
}

