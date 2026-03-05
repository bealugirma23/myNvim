-- Inline code suggestions via Ollama (qwen2.5-coder) using Minuet
-- Provides: ghost-text suggestions and completion menu (blink.cmp)
return {
  {
    "milanglacier/minuet-ai.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function()
      return {
        -- Use Ollama's OpenAI FIM-compatible endpoint
        provider = "openai_fim_compatible",
        n_completions = 1,
        context_window = 512,
        blink = { enable_auto_complete = true },
        cmp = { enable_auto_complete = false },
        virtualtext = {
          -- Enable ghost-text inline suggestions
          auto_trigger_ft = { "*" },
          keymap = {
            accept = "<Tab>",
            accept_line = "<A-;>",
            accept_n_lines = "<A-'>",
            prev = "<A-[>",
            next = "<A-]>",
            dismiss = "<A-\\>",
          },
        },
        provider_options = {
          openai_fim_compatible = {
            -- Ollama's OpenAI-compatible FIM endpoint
            end_point = "http://localhost:11434/v1/completions",
            name = "Ollama",
            model = "qwen2.5-coder",
            stream = true,
            optional = {
              max_tokens = 64,
              top_p = 0.9,
              temperature = 0.1,
            },
            -- Read any dummy env var to satisfy provider; not used by Ollama
            api_key = "TERM",
          },
        },
      }
    end,
  },
}
