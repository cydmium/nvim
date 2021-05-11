local utils = require('utils')

-- show absolute line number for current line and relative number otherwise
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('w', 'cursorline', true) -- highlight the current line
utils.opt('o', 'incsearch', true) -- search as you type
utils.opt('o', 'hlsearch', true) -- highlight matching items
-- ignore case unless a capital letter is provided
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'hidden', true) -- allow changing buffers without saving
-- tend to open splits towards the bottom right
utils.opt('o', 'splitright', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'wildmode', 'list:longest:full') -- list all matches > complete longest > complete next full match
utils.opt('o', 'scrolloff', 5) -- maintain 5 lines above and below cursor
utils.opt('o', 'completeopt', 'menuone,noselect') -- completion options for compe
