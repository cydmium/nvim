local utils = require('utils')

vim.g.mapleader = ' '

utils.map('i', 'jk', '<esc>')  -- jk -> esc, helps with pinky strain
utils.map('n', '<leader><leader>', '<cmd>nohlsearch<cr>') -- clear highlights

-- Make j and k allow for line wraps; add position to jump list if moving >= 5 lines
utils.map('n', 'j', 'v:count ? (v:count > 5 ? "m\'" . v:count : "") . "j" : "gj"', { expr = true, noremap = true, silent = true })
utils.map('n', 'k', 'v:count ? (v:count > 5 ? "m\'" . v:count : "") . "k" : "gk"', { expr = true, noremap = true, silent = true })
utils.map('v', 'j', 'v:count ? (v:count > 5 ? "m\'" . v:count : "") . "j" : "gj"', { expr = true, noremap = true, silent = true })
utils.map('v', 'k', 'v:count ? (v:count > 5 ? "m\'" . v:count : "") . "k" : "gk"', { expr = true, noremap = true, silent = true })

-- let ctrl + hjkl control split movement
utils.map('n', '<c-h>', '<c-w>h')
utils.map('n', '<c-j>', '<c-w>j')
utils.map('n', '<c-k>', '<c-w>k')
utils.map('n', '<c-l>', '<c-w>l')

-- Copy/Paste to/from system clipboard
utils.map('n', '<leader>y', '"+y')
utils.map('v', '<leader>y', '"+y')
utils.map('n', '<leader>p', '"+p')
utils.map('n', '<leader>P', '"+P')
