-- fetch keymap
local map = vim.api.nvim_set_keymap

-- map Ctrl+f n to run the command :NvimTreeToggle
map('n', '<C-f>', [[:NvimTreeToggle<CR>]], {})
-- map Ctrl+v to run the command :vsplit
map('n', '<C-v>', [[:vsplit<CR>]], {})
-- map Ctrl+s to run the command :split
map('n', '<C-s>', [[:split<CR>]], {})
-- map keys to move active windows
map('n', '<C-h>', '<C-w>h', {}) -- left
map('n', '<C-k>', '<C-w>k', {}) -- up
map('n', '<C-j>', '<C-w>j', {}) -- down
map('n', '<C-l>', '<C-w>l', {}) -- right
-- map Shift+j to move 10 lines downward
map('n', '<S-j>', "10j", {})
-- map Shift+k to move 10 lines upward
map('n', '<S-k>', "10k", {})
-- map Shift+h to move 10 chr left
map('n', '<S-h>', "10h", {})
-- map Shift+l to move 10 chr right
map('n', '<S-l>', "10l", {})

-- map Shift+Up to move 10 lines upward
map('n', '<S-Up>', "10k", {})
-- map Shift+Down to move 10 lines downward
map('n', '<S-Down>', "10j", {})
-- map Shift+Left to move 10 chr left
map('n', '<S-Left>', "10h", {})
-- map Shift+Right to move 10 chr right
map('n', '<S-Right>', "10l", {})
