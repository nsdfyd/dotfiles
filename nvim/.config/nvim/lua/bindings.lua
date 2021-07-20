local map = vim.api.nvim_set_keymap
local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.smart_tab()
    return vim.fn.pumvisible() == 1 and t'<C-n>' or t'<Tab>'
end

map('n', '<C-h>', ':tabprevious <CR>', {noremap = true})

map('n', '<C-h>', ':tabprevious <CR>', {noremap = true})
map('n', '<C-l>', ':tabnext <CR>', {noremap = true})
map('n', '<C-t>', ':tabnew % <CR>', {noremap = true})
map('i', '<C-h>', '<Esc>:tabprevious <CR>', {noremap = true})
map('i', '<C-l>', '<Esc>:tabnext <CR>', {noremap = true})
map('i', '<C-t>', '<Esc>:tabnew %<CR>', {noremap = true})
--map('t', '<C-h>', '<C-\><C-n>:tabprevious <CR>', {noremap = true})
--map('t', '<C-l>', '<C-\><C-n>:tabnext <CR>', {noremap = true})
--map('t', '<C-t>', '<C-\><C-n>:tabnew %<CR>', {noremap = true})

map('n', '<space>t', ':term <CR>', {noremap = true})
--map('n', '<space>top', ':tabnew \| term htop <CR>', {noremap = true})
--map('n', '<space>nws', ':tabnew \| term newsboat <CR> <C-w>o <CR>', {noremap = true})

map('n', '<space>h', '<C-W><C-h>', {noremap = true})
map('n', '<space>j', '<C-W><C-j>', {noremap = true})
map('n', '<space>k', '<C-W><C-k>', {noremap = true})
map('n', '<space>l', '<C-W><C-l>', {noremap = true})

map('n', '<C-n>', '<C-x><C-o>', {noremap = true})

--map('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', {noremap = true})
--map('n', 'K', ':lua vim.lsp.buf.hover()<CR>', {noremap = true})
--map('n', '<space>rn', ':lua vim.lsp.buf.rename()<CR>', {noremap = true})
--map('n', '[d', ':lua vim.lsp.diagnostic.goto_prev()<CR>', {noremap = true})
--map('n', ']d', ':lua vim.lsp.diagnostic.goto_next()<CR>', {noremap = true})
--map('n', '<space>q', ':lua vim.lsp.diagnostic.set_loclist()<CR>', {noremap = true})
--map('n', '<space>f', ':lua vim.lsp.buf.range_formatting()<CR>', {noremap = true})


map('n', '<space>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>', {noremap = true})
map('n', '<space>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', {noremap = true})
map('n', '<space>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', {noremap = true})
map('n', '<space>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', {noremap = true})
--map('n', '<space>f', ':FZF <CR>', {noremap = true})
--map('n', '<space>g', ':GFiles <CR>', {noremap = true})

--map('n', '<space>git', ':tabnew \| Gstatus <CR> <C-w>o <CR>', {noremap = true})
