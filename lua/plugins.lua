-- Auto install packer.nvim if not exists
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- packer manages itself

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'ray-x/lsp_signature.nvim'
  use 'kabouzeid/nvim-lspinstall'

  -- use 'morhetz/gruvbox' -- colorscheme
  use 'sainnhe/gruvbox-material' -- colorscheme 2.0
  use "morhetz/gruvbox"
  use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"} -- smart syntax highlighting
  use 'windwp/nvim-autopairs'
  use 'tpope/vim-fugitive' -- git integration
  use 'lewis6991/gitsigns.nvim' -- git signs
  use 'terrortylor/nvim-comment' -- gcc to comment
  use 'hrsh7th/nvim-compe' -- autocompletion
  use 'hrsh7th/vim-vsnip' -- snippet engine
  use 'rafamadriz/friendly-snippets' -- default snippets
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  } -- Finder
  use 'nvim-telescope/telescope-fzy-native.nvim' -- Fuzzy finding
end)
