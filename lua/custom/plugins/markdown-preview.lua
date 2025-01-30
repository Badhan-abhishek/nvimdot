return {
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown', 'md' },
    build = function()
      vim.cmd 'cd app && yarn install'
    end,
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
  },
}
