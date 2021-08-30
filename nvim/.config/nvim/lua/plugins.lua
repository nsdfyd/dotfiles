return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
 -- visual stuff
  use 'joshdick/onedark.vim'
  use 'sheerun/vim-polyglot'
  -- functionality
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use 'neovim/nvim-lspconfig'
  use 'voldikss/vim-floaterm'
  use 'tpope/vim-dadbod'
  use 'kristijanhusak/vim-dadbod-ui'
  use 'vimwiki/vimwiki'
  -- interfaces 
  -- databases telescope
  --use 'soywod/himalaya'
  -- postman
  --use 'mfussenegger/nvim-dap'
  --use 'vimwiki/vimwiki'
end)
