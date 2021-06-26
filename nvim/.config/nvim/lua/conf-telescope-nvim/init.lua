local map = vim.api.nvim_set_keymap

require('telescope').setup{}

map('n', '<space>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>', {noremap = true})
map('n', '<space>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', {noremap = true})
map('n', '<space>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', {noremap = true})
map('n', '<space>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', {noremap = true})
--map('n', '<space>f', ':FZF <CR>', {noremap = true})
--map('n', '<space>g', ':GFiles <CR>', {noremap = true})
