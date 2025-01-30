return {
  { -- Autoformat
    'stevearc/conform.nvim',
    keys = {
      {
        '<leader>f',
        function()
          require('conform').format { async = true, lsp_fallback = true }
        end,
        mode = '',
        desc = 'Format buffer',
      },
    },
    opts = {
      log_level = vim.log.levels.DEBUG,
      notify_on_error = false,
      format_on_save = false,
      -- format_on_save = {
      --   timeout_ms = 500,
      --   lsp_fallback = true,
      -- },
      formatters_by_ft = {
        lua = { 'stylua' },
        -- Conform can also run multiple formatters sequentially
        -- python = { "isort", "black" },
        --
        -- You can use a sub-list to tell conform to run *until* a formatter
        -- is found.
        javascript = { 'biome', 'prettier' },
        javascriptreact = { 'biome', 'prettier' },
        typescript = { 'biome', 'prettier', stop_after_first = true },
        typescriptreact = { 'biome', 'prettier', stop_after_first = true },
        scss = { 'biome', 'prettier' },
        css = { 'biome', 'prettier' },
        html = { 'biome', 'prettier' },
        python = { 'black' },
        json = { 'biome', 'prettier' },
      },
    },
  },
}
