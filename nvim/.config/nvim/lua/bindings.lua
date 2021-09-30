local map = vim.api.nvim_set_keymap
local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.smart_tab()
    return vim.fn.pumvisible() == 1 and t'<C-n>' or t'<Tab>'
end


map('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', {noremap = true})
map('n', 'K', ':lua vim.lsp.buf.hover()<CR>', {noremap = true})
map('n', '<space>rn', ':lua vim.lsp.buf.rename()<CR>', {noremap = true})
map('n', '[d', ':lua vim.lsp.diagnostic.goto_prev()<CR>', {noremap = true})
map('n', ']d', ':lua vim.lsp.diagnostic.goto_next()<CR>', {noremap = true})
map('n', '<space>q', ':lua vim.lsp.diagnostic.set_loclist()<CR>', {noremap = true})
map('n', '<space>f', ':lua vim.lsp.buf.range_formatting()<CR>', {noremap = true})


map('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>', {noremap = true})
map('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<CR>', {noremap = true})
map('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>', {noremap = true})
map('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<CR>', {noremap = true})


map('n', '<leader>t', ':FloatermToggle<CR>', {noremap=true})
map('t', '<leader>t', '<C-\\><C-n>:FloatermToggle<CR>', {noremap=true})

map('n', '<leader><Tab>', ':FloatermPrev<CR>', {noremap=true})
map('t', '<leader><Tab>', '<C-\\><C-n>:FloatermPrev<CR>', {noremap=true})

map('n', '<leader>]<Tab>', ':FloatermNext<CR>', {noremap=true})
map('t', '<leader>]<Tab>', '<C-\\><C-n>:FloatermNext<CR>', {noremap=true})

map('n', '<leader>q', ':FloatermKill<CR>', {noremap=true})
map('t', '<leader>q', '<C-\\><C-n>:FloatermKill<CR>', {noremap=true})

map('n', '<leader>nt', ':FloatermNew<CR>', {noremap=true})
map('t', '<leader>nt', '<C-\\><C-n>:FloatermNew<CR>', {noremap=true})

map('n', '<leader>e', ':FloatermNew ranger<CR>', {noremap=true})
map('t', '<leader>e', '<C-\\><C-n>:FloatermNew ranger<CR>', {noremap=true})

map('n', '<leader>p', ':FloatermNew ipython --TerminalInteractiveShell.editing_mode=vi<CR>', {noremap=true})
map('t', '<leader>p', '<C-\\><C-n>:FloatermNew --TerminalInteractiveShell.editing_mode=vi<CR>', {noremap=true})

map('v', '<leader><leader>', ':FloatermSend<CR>', {noremap=true})
map('n', '<leader><leader>', ':FloatermSend<CR>', {noremap=true})
