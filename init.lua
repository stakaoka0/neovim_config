-- load .vimrc and set path for snippets
vim.cmd([[
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

let g:vsnip_snippet_dir = expand('$HOME/.config/nvim/vsnip/')
]])

--- load lua files
require('plugins')
require('file-explorer')
require('mason-config')
require('lsp-setting')
require('code-completion')
require('custom-keys')
require('styling')
require('file-finder')
require('syntax-highlight')
require('statusbar')
