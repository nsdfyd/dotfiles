return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'joshdick/onedark.vim'
  use 'mipmip/vim-scimark'
  use 'neovim/nvim-lspconfig'
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}}
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'plasticboy/vim-markdown'
  use 'vimwiki/vimwiki'
  use 'voldikss/vim-floaterm'
  use 'mfussenegger/nvim-dap'
  -- interfaces 
  -- databases telescope
  -- use 'soywod/himalaya'
  -- postman
end)
