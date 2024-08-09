-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--

return {
  {
    'petertriho/nvim-scrollbar',
    config = {
      show = true,
      marks = {
        Cursor = {
          text = '•',
          priority = 0,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm
          highlight = 'Normal',
        },
        Search = {
          text = { '-', '=' },
          priority = 1,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm
          highlight = 'Search',
        },
        Error = {
          text = { '-', '=' },
          priority = 2,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm
          highlight = 'DiagnosticVirtualTextError',
        },
        Warn = {
          text = { '-', '=' },
          priority = 3,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm
          highlight = 'DiagnosticVirtualTextWarn',
        },
        Info = {
          text = { '-', '=' },
          priority = 4,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm
          highlight = 'DiagnosticVirtualTextInfo',
        },
        Hint = {
          text = { '-', '=' },
          priority = 5,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm
          highlight = 'DiagnosticVirtualTextHint',
        },
        Misc = {
          text = { '-', '=' },
          priority = 6,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm
          highlight = 'Normal',
        },
        GitAdd = {
          text = '┆',
          priority = 7,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm
          highlight = 'GitSignsAdd',
        },
        GitChange = {
          text = '┆',
          priority = 7,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm
          highlight = 'GitSignsChange',
        },
        GitDelete = {
          text = '▁',
          priority = 7,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil, -- cterm
          highlight = 'GitSignsDelete',
        },
      },
    },
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    'github/copilot.vim',
  },

  {
    'f-person/auto-dark-mode.nvim',
    config = {
      update_interval = 1000,
      set_dark_mode = function()
        vim.api.nvim_set_option('background', 'dark')
        vim.cmd 'colorscheme gruvbox'
      end,
      set_light_mode = function()
        vim.api.nvim_set_option('background', 'light')
        vim.cmd 'colorscheme minischeme'
      end,
    },
  },

  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
    'barrett-ruth/live-server.nvim',
    build = 'pnpm add -g live-server',
    cmd = { 'LiveServerStart', 'LiveServerStop' },
    config = true,
  },
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    build = function()
      vim.fn['mkdp#util#install']()
    end,
  },
  {
    'zaldih/themery.nvim',
    themes = { 'gruvbox' },
    themeConfigFile = '~/.config/nvim/lua/custom/settings/theme.lua',
    livePreview = true,
  },
}
