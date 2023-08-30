-- fetch keymap
local map = vim.api.nvim_set_keymap

-- map the key n to run the command :NvimTreeToggle
map('n', '<C-f>', [[:NvimTreeToggle<CR>]], {})
