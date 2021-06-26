return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- functionality
  use 'joshdick/onedark.vim'
  use 'sheerun/vim-polyglot'
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use 'neovim/nvim-lspconfig'
  use 'folke/which-key.nvim'
  -- interfaces 
  use 'soywod/himalaya'
  use 'tpope/vim-fugitive'
  use 'farseer90718/vim-taskwarrior'
  --use 'kkvh/vim-docker-tools'
  --use 'skanehira/docker.vim'
  --use 'tpope/vim-dadbod'
  --use 'kristijanhusak/vim-dadbod-ui'
  -- postman
  --use 'ojroques/nvim-lspfuzzy'
  --use 'mfussenegger/nvim-dap'
  --use 'vimwiki/vimwiki'
end)
