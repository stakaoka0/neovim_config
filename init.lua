-- load .vimrc
vim.cmd([[
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
]])

--- load lua files
require('plugins')
require('file-explorer')
require('mason-config')
require('lsp-setting')
require('code-completion')
require('custom-keys')
require('styling')
