local map = vim.api.nvim_set_keymap
local tree_cb = require'nvim-tree.config'.nvim_tree_callback

function NvimTreeXdgOpen()
  local lib = require'nvim-tree.lib'
  local node = lib.get_node_at_cursor()
  if node then
    vim.fn.jobstart("open '" .. node.absolute_path .. "' &", { detach = true })
    -- Switch between macos and linux
    --vim.fn.jobstart("xdg-open '" .. node.absolute_path .. "' &", { detach = true })
  end
end

vim.g.nvim_tree_bindings = {
	["<CR>"] = ":YourVimFunction()<cr>",
	--["u"] = ":lua require'some_module'.some_function()<cr>",
	[";"] = ':lua NvimTreeXdgOpen()<CR>',

	-- default mappings
	["<CR>"]           = tree_cb("edit"),
	["o"]              = tree_cb("edit"),
	["<2-LeftMouse>"]  = tree_cb("edit"),
	["<2-RightMouse>"] = tree_cb("cd"),
	["l"]              = tree_cb("cd"),
	["<C-v>"]          = tree_cb("vsplit"),
	["<C-x>"]          = tree_cb("split"),
	["<C-t>"]          = tree_cb("tabnew"),
	["<"]              = tree_cb("prev_sibling"),
	[">"]              = tree_cb("next_sibling"),
	["<BS>"]           = tree_cb("close_node"),
	["<S-CR>"]         = tree_cb("close_node"),
	["<Tab>"]          = tree_cb("preview"),
	["I"]              = tree_cb("toggle_ignored"),
	["H"]              = tree_cb("toggle_dotfiles"),
	["R"]              = tree_cb("refresh"),
	["a"]              = tree_cb("create"),
	["d"]              = tree_cb("remove"),
	["r"]              = tree_cb("rename"),
	["<C-r>"]          = tree_cb("full_rename"),
	["x"]              = tree_cb("cut"),
	["c"]              = tree_cb("copy"),
	["p"]              = tree_cb("paste"),
	["y"]              = tree_cb("copy_name"),
	["Y"]              = tree_cb("copy_path"),
	["gy"]             = tree_cb("copy_absolute_path"),
	["[c"]             = tree_cb("prev_git_item"),
	["]c"]             = tree_cb("next_git_item"),
	["h"]              = tree_cb("dir_up"),
	["q"]              = tree_cb("close"),
}

vim.g.nvim_tree_side = 'left' --left by default
vim.g.nvim_tree_width = 50 --30 by default
--vim.g.nvim_tree_ignore = [] --empty by default
vim.g.nvim_tree_gitignore = 0 --0 by default
vim.g.nvim_tree_auto_open = 0 --0 by default, opens the tree when typing `vim $DIR` or `vim`
vim.g.nvim_tree_auto_close = 1 --0 by default, closes the tree when it's the last window
--vim.g.nvim_tree_auto_ignore_ft = [] --empty by default, don't auto open tree on specific filetypes.
vim.g.nvim_tree_quit_on_open = 1 --0 by default, closes the tree when you open a file
vim.g.nvim_tree_follow = 0 --0 by default, this option allows the cursor to be updated when entering a buffer
vim.g.nvim_tree_indent_markers = 1 --0 by default, this option shows indent markers when folders are open
vim.g.nvim_tree_hide_dotfiles = 1 --0 by default, this option hides files and folders starting with a dot `.`
vim.g.nvim_tree_git_hl = 1 --0 by default, will enable file highlight for git attributes (can be used without the icons).
vim.g.nvim_tree_highlight_opened_files = 1 --0 by default, will enable folder and file icon highlight for opened files/directories.
vim.g.nvim_tree_root_folder_modifier = ':~' --This is the default. See :help filename-modifiers for more options
vim.g.nvim_tree_tab_open = 0 --0 by default, will open the tree when entering a new tab and the tree was previously open
vim.g.nvim_tree_width_allow_resize  = 0 --0 by default, will not resize the tree when opening a file
vim.g.nvim_tree_disable_netrw = 1 --1 by default, disables netrw
vim.g.nvim_tree_hijack_netrw = 0 --1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
vim.g.nvim_tree_add_trailing = 0 --0 by default, append a trailing slash to folder names
vim.g.nvim_tree_group_empty = 0 -- 0 by default, compact folders that only contain a single folder into one node in the file tree
vim.g.nvim_tree_lsp_diagnostics = 1 --0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics
vim.g.nvim_tree_disable_window_picker = 0 --0 by default, will disable the window picker.
vim.g.nvim_tree_hijack_cursor = 1 --1 by default, when moving cursor in the tree, will position the cursor at the start of the file on the current line
vim.g.nvim_tree_icon_padding = ' ' --one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
vim.g.nvim_tree_update_cwd = 1 --0 by default, will update the tree cwd when changing nvim's directory (DirChanged event). Behaves strangely with autochdir set.
--vim.g.nvim_tree_special_files = [ 'README.md', 'Makefile', 'MAKEFILE' ] -- List of filenames that gets highlighted with NvimTreeSpecialFile

map('n', '<space>e', ':NvimTreeToggle <CR>', {noremap = true})

--nnoremap <leader>r :NvimTreeRefresh<CR>
--nnoremap <leader>n :NvimTreeFindFile<CR>
-- NvimTreeOpen and NvimTreeClose are also available if you need them

--set termguicolors " this variable must be enabled for colors to be applied properly

-- a list of groups can be found at `:help nvim_tree_highlight`
--highlight NvimTreeFolderIcon guibg=blue
