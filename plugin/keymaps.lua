local km = vim.keymap

km.set('x', '<leader>p', [["_dP]])
km.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostics
km.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
km.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
km.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
km.set('n', '<leader>ql', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix [l]ist' })
km.set('n', '<leader>qs', vim.diagnostic.setqflist, { desc = 'Display diagnostic for given namespace and buffer' })

km.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Disable arrow keys
km.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
km.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
km.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
km.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Move between windows
km.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
km.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
km.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
km.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- For netrw (although currently disabled)
km.set('n', '<leader>ph', vim.cmd.Ex, { desc = 'Open netrw file explorer' })
km.set('n', '<leader>dh', vim.cmd.Sex, { desc = 'Split horizontally' })
km.set('n', '<leader>dv', vim.cmd.Vex, { desc = 'Split vertically' })

-- Editor commands
km.set('n', '<leader>ac', 'gg<C-v>GGy<C-o>', { desc = 'Copy current buffer into vim clipboard' })
km.set('n', '<leader>"ac', 'gg<C-v>GG"+y<C-o>', { desc = 'Copy current buffer into vim clipboard' })


