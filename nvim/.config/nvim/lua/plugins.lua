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
  -- interfaces 
  --use 'soywod/himalaya'
  --use 'farseer90718/vim-taskwarrior'
  --use 'kkvh/vim-docker-tools'
  --use 'skanehira/docker.vim'
  --use 'tpope/vim-dadbod'
  --use 'kristijanhusak/vim-dadbod-ui'
  -- postman
  --use 'ojroques/nvim-lspfuzzy'
  --use 'mfussenegger/nvim-dap'
  --use 'vimwiki/vimwiki'
end)
