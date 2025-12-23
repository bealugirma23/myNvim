return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    enabled = false,
  },
  {
    "folke/snacks.nvim",
    priority = 1000,
    opts = {
      bigfile = { enabled = true },
      dashboard = {
        preset = {
          header = [[
   ,-,--.         ___   .=-.-.             ,----.          ,-.--,
 ,-.'-  _\ .-._ .'=.'\ /==/_ / _.-.     ,-.--` , \.--.-.  /=/, .'
/==/_ ,_.'/==/ \|==|  |==|, |.-,.'|    |==|-  _.-`\==\ -\/=/- /
\==\  \   |==|,|  / - |==|  |==|, |    |==|   `.-. \==\ `-' ,/
 \==\ -\  |==|  \/  , |==|- |==|- |   /==/_ ,    /  |==|,  - |
 _\==\ ,\ |==|- ,   _ |==| ,|==|, |   |==|    .-'  /==/   ,   \
/==/\/ _ ||==| _ /\   |==|- |==|- `-._|==|_  ,`-._/==/, .--, - \
\==\ - , //==/  / / , /==/. /==/ - , ,/==/ ,     /\==\- \/=/ , /
 `--`---' `--`./  `--``--`-``--`-----'`--`-----``  `--`-'  `--`
   ]],
        },
      },
      notifier = { enabled = true },
      statusline = { enabled = true },
      quickfile = { enabled = true },
      scratch = { enabled = true },
      package = { enabled = true },
      terminal = { enabled = true },
    },
    keys = {
      { "<leader>fn", "<cmd>SnacksNotices<cr>", desc = "Notices" },
      { "<leader>nc", "<cmd>SnacksNotifications clear<cr>", desc = "Clear notifications" },
      { "<leader>nd", "<cmd>SnacksNotifications dismiss<cr>", desc = "Dismiss notifications" },
      { "<leader>nn", "<cmd>SnacksNotifications<cr>", desc = "Notifications" },
      { "<leader>nt", "<cmd>SnacksToggle indent<cr>", desc = "Toggle indent guides" },
      { "<leader>tn", "<cmd>SnacksToggle number<cr>", desc = "Toggle line numbers" },
      { "<leader>uB", "<cmd>SnacksGitBrowse<cr>", desc = "Git Browse" },
      { "<leader>gb", "<cmd>SnacksGitBrowse<cr>", desc = "Git Browse" },
      { "<leader>uC", "<cmd>SnacksGitCopyUrl modus operandi<cr>", desc = "Git Copy Content URL" },
      { "<leader>gc", "<cmd>SnacksGitCopyUrl<cr>", desc = "Git Copy URL" },
      { "<leader>gt", "<cmd>SnacksTerminal<cr>", desc = "Toggle Terminal (Snacks)" },
      { "<leader>tx", "<cmd>SnacksTerminalExec<cr>", desc = "Execute in Terminal (Snacks)" },
      { "<leader>X", "<cmd>SnacksScratch<cr>", desc = "Scratch Buffer" },
      { "<leader>ff", "<cmd>SnacksQuickFix<cr>", desc = "Quickfix List" },
      { "<leader>fa", "<cmd>SnacksAstPicker<cr>", desc = "AST Picker" },
      { "<c-_>", "<cmd>SnacksComment toggle<cr>", desc = "Comment Toggle" },
      { "<c-/>", "<cmd>SnacksComment toggle<cr>", desc = "Comment Toggle" },
    },
  },
}
