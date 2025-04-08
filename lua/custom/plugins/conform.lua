local prettier_config_files = {
  '.prettierrc',
  '.prettierrc.json',
  '.prettierrc.js',
  '.prettierrc.cjs',
  'prettier.config.js',
  'prettier.config.cjs',
  '.prettierrc.yaml',
  '.prettierrc.yml',
}
local biome_config_files = {
  'biome.json',
}

local function has_config_file(config_files)
  for _, filename in ipairs(config_files) do
    if vim.loop.fs_stat(filename) then
      return true
    end
  end
  return false
end

local function get_config()
  if has_config_file(prettier_config_files) then
    return 'prettier'
  end
  return 'biome'
end

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
      notify_on_error = true,
      notify_no_formatters = true,
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
        javascript = {
          get_config(),
        },
        javascriptreact = {
          get_config(),
        },
        typescript = {
          get_config(),
        },
        typescriptreact = {
          get_config(),
        },
        scss = {
          get_config(),
        },
        css = {
          get_config(),
        },
        sql = {
          get_config(),
        },
        html = {
          get_config(),
        },
        python = { 'black' },
        json = {
          get_config(),
        },
        markdown = { 'doctoc', 'prettier' },
      },
    },
  },
}
