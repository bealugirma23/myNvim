-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remap redo to <leader>r because Ctrl+R is used by the OS.
vim.keymap.set("n", "<leader>r", "<C-r>", { desc = "Redo" })

-- Development keymaps
vim.keymap.set("n", "<leader>tf", "<cmd>FlutterRun<cr>", { desc = "Flutter Run" })
vim.keymap.set("n", "<leader>td", "<cmd>FlutterDevices<cr>", { desc = "Flutter Devices" })
vim.keymap.set("n", "<leader>th", "<cmd>FlutterHotReload<cr>", { desc = "Flutter Hot Reload" })
vim.keymap.set("n", "<leader>tH", "<cmd>FlutterHotRestart<cr>", { desc = "Flutter Hot Restart" })
vim.keymap.set("n", "<leader>tq", "<cmd>FlutterQuit<cr>", { desc = "Flutter Quit" })

-- .NET keymaps (only if .NET is installed)
if vim.fn.executable("dotnet") == 1 then
  vim.keymap.set("n", "<leader>nb", "<cmd>DotnetBuild<cr>", { desc = ".NET Build" })
  vim.keymap.set("n", "<leader>nr", "<cmd>DotnetRun<cr>", { desc = ".NET Run" })
  vim.keymap.set("n", "<leader>nt", "<cmd>DotnetTest<cr>", { desc = ".NET Test" })
end

-- Web development keymaps
vim.keymap.set("n", "<leader>wf", "<cmd>lua require('lazyvim.util.format').format()<cr>", { desc = "Format File" })
vim.keymap.set("n", "<leader>we", "<cmd>EslintFixAll<cr>", { desc = "ESLint Fix All" })

-- Project keymaps
vim.keymap.set("n", "<leader>pp", "<cmd>Telescope projects<cr>", { desc = "Projects" })
