return {
  {
    'f-person/auto-dark-mode.nvim',
    config = {
      set_dark_mode = function()
        vim.api.nvim_set_option_value('background', 'dark', {})
        vim.cmd 'colorscheme base16-rebecca'
      end,
      set_light_mode = function()
        vim.api.nvim_set_option_value('background', 'light', {})
        vim.cmd 'colorscheme bluloco-light'
      end,
      update_interval = 1000,
      fallback = 'dark',
    },
  },
}
