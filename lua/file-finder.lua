-- search files
vim.keymap.set('n', '<leader>ff', ':lua require"telescope.builtin".find_files({hidden=false})<CR>', {})
-- search files, even hidden ones
vim.keymap.set('n', '<leader>fa', ':lua require"telescope.builtin".find_files({hidden=true})<CR>', {})
-- ripgrep files, respects gitignore
vim.keymap.set('n', '<leader>fg', ':lua require"telescope.builtin".live_grep()<CR>', {})