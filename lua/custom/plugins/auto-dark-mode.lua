return {
  {
    'f-person/auto-dark-mode.nvim',
    config = {
      set_dark_mode = function()
        vim.api.nvim_set_option_value('background', 'dark', {})
        vim.cmd 'colorscheme base16-windows-highcontrast'
      end,
      set_light_mode = function()
        vim.api.nvim_set_option_value('background', 'light', {})
        -- vim.cmd 'colorscheme base16-unikitty-light'
        vim.cmd 'colorscheme catppuccin-latte'
      end,
      update_interval = 1000,
      fallback = 'dark',
    },
  },
}
