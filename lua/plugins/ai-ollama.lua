-- Local AI assistance powered by Ollama (qwen2.5-coder)
-- Replaces any Copilot integrations with a fully local setup.
return {
  {
    "olimorris/codecompanion.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = function()
      -- Configure CodeCompanion to use the local Ollama server
      -- at http://localhost:11434 with qwen2.5-coder as the model.
      local cc = require("codecompanion")
      local adapters = require("codecompanion.adapters")

      return {
        strategies = {
          chat = { adapter = "ollama" },
          inline = {
            adapter = "ollama",
            -- convenient inline diff keymaps for applying changes
            keymaps = {
              accept_change = { modes = { n = "ga" } },
              reject_change = { modes = { n = "gR" }, opts = { nowait = true } },
            },
          },
          agent = { adapter = "ollama" },
        },
        adapters = {
          ollama = function()
            -- Extend the built-in Ollama adapter with our endpoint/model
            return adapters.extend("ollama", {
              endpoint = "http://localhost:11434",
              model = "qwen2.5-coder",
              temperature = 0.2,
              stream = true,
            })
          end,
        },
      }
    end,
    config = function(_, opts)
      require("codecompanion").setup(opts)

      -- Example keymaps for common actions
      local map = vim.keymap.set
      local desc = function(d)
        return { desc = "AI: " .. d }
      end

      -- Open chat panel
      map("n", "<leader>ac", ":CodeCompanionChat<CR>", desc("Chat (Ollama)"))
      -- Toggle chat (CodeCompanion v4 uses :CodeCompanionChat Toggle)
      map("n", "<leader>ai", ":CodeCompanionChat Toggle<CR>", desc("Toggle Chat"))
      -- Actions palette (ask, refactor, tests, etc.)
      map("n", "<leader>aa", ":CodeCompanionActions<CR>", desc("Actions"))
      -- Explain selected code (visual)
      map("v", "<leader>ae", ":'<,'>CodeCompanion /explain<CR>", desc("Explain Selection"))
      -- Fix/refactor selected code (visual)
      map("v", "<leader>af", ":'<,'>CodeCompanion /fix<CR>", desc("Fix Selection"))
    end,
  },
}
