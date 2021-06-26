local map = vim.api.nvim_set_keymap

require'lspconfig'.bashls.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.cmake.setup{}
require'lspconfig'.dockerls.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.phpactor.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.sqls.setup{}
require'lspconfig'.texlab.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.yamlls.setup{}

--map('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', {noremap = true})
--map('n', 'K', ':lua vim.lsp.buf.hover()<CR>', {noremap = true})
--map('n', '<space>rn', ':lua vim.lsp.buf.rename()<CR>', {noremap = true})
--map('n', '[d', ':lua vim.lsp.diagnostic.goto_prev()<CR>', {noremap = true})
--map('n', ']d', ':lua vim.lsp.diagnostic.goto_next()<CR>', {noremap = true})
--map('n', '<space>q', ':lua vim.lsp.diagnostic.set_loclist()<CR>', {noremap = true})
--map('n', '<space>f', ':lua vim.lsp.buf.range_formatting()<CR>', {noremap = true})
