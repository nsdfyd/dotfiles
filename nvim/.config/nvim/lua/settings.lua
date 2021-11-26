vim.bo.expandtab = true -- Converts tabs to spaces
vim.bo.shiftwidth = 12
vim.bo.smartindent = true -- Makes indenting smart
vim.bo.tabstop = 12

vim.o.autochdir = false
vim.o.backspace = 'indent,eol,start'
vim.o.backup = false
vim.o.clipboard = 'unnamedplus'
vim.o.completeopt = 'menuone,noinsert,noselect'
vim.o.fileencoding = 'utf-8'
vim.o.langmap = 'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz'
vim.o.laststatus = 0
vim.o.modifiable = true
vim.o.mouse = 'a'
--vim.o.showtabline = 2
vim.o.swapfile = false
vim.o.termguicolors = true
vim.o.writebackup = false

vim.wo.cursorline = true
vim.wo.relativenumber = true
vim.wo.signcolumn = 'yes'
vim.wo.wrap = false

vim.api.nvim_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

vim.cmd("autocmd TermOpen term://* startinsert | setlocal nonumber norelativenumber")
vim.cmd("autocmd BufWinEnter,WinEnter term://* startinsert")
vim.cmd("set rtp+=~/.local/share/nvim/site/pack/packer/start/himalaya/vim")
vim.cmd [[
	syntax on
	colorscheme onedark
	hi Normal guibg=NONE ctermbg=NONE
]]
