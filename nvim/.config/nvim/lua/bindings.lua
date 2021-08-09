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


map('n', '<space>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>', {noremap = true})
map('n', '<space>fg', '<cmd>lua require("telescope.builtin").live_grep()<CR>', {noremap = true})
map('n', '<space>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>', {noremap = true})
map('n', '<space>fh', '<cmd>lua require("telescope.builtin").help_tags()<CR>', {noremap = true})


map('n', '<C-t>', ':FloatermToggle<CR>', {noremap=true})
map('t', '<C-t>', '<C-\\><C-n>:FloatermToggle<CR>', {noremap=true})

map('n', '<C-k>', ':FloatermPrev<CR>', {noremap=true})
map('t', '<C-k>', '<C-\\><C-n>:FloatermPrev<CR>', {noremap=true})

map('n', '<C-j>', ':FloatermNext<CR>', {noremap=true})
map('t', '<C-j>', '<C-\\><C-n>:FloatermNext<CR>', {noremap=true})

map('n', '<C-q>', ':FloatermKill<CR>', {noremap=true})
map('t', '<C-q>', '<C-\\><C-n>:FloatermKill<CR>', {noremap=true})

map('n', '<C-\\>term', ':FloatermNew<CR>', {noremap=true})
map('t', '<C-\\>term', '<C-\\><C-n>:FloatermNew<CR>', {noremap=true})

map('n', '<C-\\>ex', ':FloatermNew ranger<CR>', {noremap=true})
map('t', '<C-\\>ex', '<C-\\><C-n>:FloatermNew ranger<CR>', {noremap=true})

map('n', '<C-\\>top', ':FloatermNew htop<CR>', {noremap=true})
map('t', '<C-\\>top', '<C-\\><C-n>:FloatermNew htop<CR>', {noremap=true})

map('n', '<C-\\>py', ':FloatermNew ipython<CR>', {noremap=true})
map('t', '<C-\\>py', '<C-\\><C-n>:FloatermNew ipython<CR>', {noremap=true})

map('n', '<C-\\>lg', ':FloatermNew lazygit<CR>', {noremap=true})
map('t', '<C-\\>lg', '<C-\\><C-n>:FloatermNew lazygit<CR>', {noremap=true})

map('v', '<C-\\><C-\\>', ':FloatermSend<CR>', {noremap=true})
map('n', '<C-\\><C-\\>', ':FloatermSend<CR>', {noremap=true})

map('v', '<C-\\>mt', ':FloatermNew neomutt<CR>', {noremap=true})
map('n', '<C-\\>mt', ':FloatermNew neomutt<CR>', {noremap=true})

