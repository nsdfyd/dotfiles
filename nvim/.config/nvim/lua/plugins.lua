vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'joshdick/onedark.vim'
  use 'sheerun/vim-polyglot'
  --use 'nvim-treesitter/nvim-treesitter'
  use 'tpope/vim-fugitive'
  use 'junegunn/fzf.vim'
  --use 'ojroques/nvim-lspfuzzy'
  --use 'kkvh/vim-docker-tools'
  --use 'skanehira/docker.vim'
  --use skanehira/docker-compose.vim'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use 'mfussenegger/nvim-dap'
  use 'tpope/vim-dadbod'
  use 'kristijanhusak/vim-dadbod-ui'
  -- postman
end)
