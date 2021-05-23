local utils = require'utils'
if vim.fn.has("termguicolors") == 1 then
  utils.opt('o', 'termguicolors', true)
end
vim.g.gruvbox_material_enable_bold = true
vim.g.gruvbox_material_enable_italic = true
vim.g.gruvbox_material_palette = 'mix'
vim.cmd([[colorscheme gruvbox-material]])
