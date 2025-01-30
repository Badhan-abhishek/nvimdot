local opt = vim.opt

-- Make line numbers default
opt.number = true
opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
opt.mouse = 'a'

-- Don't show the mode, since it's already in status line
opt.showmode = false
opt.linebreak = true

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
opt.signcolumn = 'yes'

-- Decrease update time
opt.updatetime = 250
opt.timeoutlen = 300

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣', eol = '↵' }
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
vim.bo.softtabstop = 2
opt.inccommand = 'split'
opt.cursorline = true
opt.scrolloff = 10

-- Always show thick cursor
opt.guicursor = 'n-v-i-c:block-Cursor'

-- Set highlight on search, but clear on pressing <Esc> in normal mode
opt.hlsearch = true
