vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua
return require('packer').startup(function(use)
  -- postman
  --use 'kkvh/vim-docker-tools'
  --use 'nvim-treesitter/nvim-treesitter'
  --use 'ojroques/nvim-lspfuzzy'
  --use 'skanehira/docker.vim'
  --use skanehira/docker-compose.vim'
  use 'farseer90718/vim-taskwarrior'
  use 'joshdick/onedark.vim'
  use 'junegunn/fzf.vim'
  use 'kristijanhusak/vim-dadbod-ui'
  use 'mfussenegger/nvim-dap'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use 'sheerun/vim-polyglot'
  use 'tpope/vim-dadbod'
  use 'tpope/vim-fugitive'
  use 'vimwiki/vimwiki'
  use 'wbthomason/packer.nvim'
end)
