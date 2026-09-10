" General editing behavior
" ------------------------
" Keep the working directory clean, make Backspace intuitive in Insert mode,
" allow block selections past line endings, and improve command completion.
set nowritebackup
set nobackup
set virtualedit=block
set backspace=indent,eol,start
set ambiwidth=double
set wildmenu

" Search behavior
" ---------------
" Search as text is entered, wrap at EOF, and ignore case unless the pattern
" contains uppercase characters.
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch

" Display and interface
" ---------------------
" Show useful status details, line numbers, matching brackets, and visible
" markers for tabs and trailing whitespace.
set noerrorbells
set shellslash
set showmatch matchtime=1
set cinoptions+=:0
set cmdheight=2
set laststatus=2
set showcmd
set display=lastline
set list
set listchars=tab:^\ ,trail:~
set history=10000
set number
" Supply a terminal color when a colorscheme does not override this group.
highlight Comment ctermfg=3

" Indentation
" -----------
" Use spaces and two-column indentation by default. Filetype or project
" settings can override these global values.
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Window and buffer behavior
" --------------------------
" These settings work in terminal Vim and Neovim; guioptions only affects
" graphical Vim builds.
set guioptions-=T
set guioptions+=a
set guioptions-=m
set guioptions+=R
set showmatch
set smartindent
set noswapfile
set nofoldenable
set title

" Clipboard integration
" ---------------------
" Use tmux as Neovim's clipboard provider in HPC/remote tmux sessions.
" Otherwise, use the operating system clipboard when the editor supports it.
if has('nvim') && exists('$TMUX') && executable('tmux')
let g:clipboard = {
      \   'name': 'tmux',
      \   'copy': {
      \      '+': ['tmux', 'load-buffer', '-'],
      \      '*': ['tmux', 'load-buffer', '-'],
      \    },
      \   'paste': {
      \      '+': ['tmux', 'save-buffer', '-'],
      \      '*': ['tmux', 'save-buffer', '-'],
      \   },
      \   'cache_enabled': 1,
      \ }
elseif has('clipboard') || has('mac') || has('win32') || has('win64')
  set clipboard=unnamedplus
endif

" Key mappings
" ------------
" Leave Insert mode with "jj" and clear highlighted searches with Escape twice.
inoremap <silent> jj <ESC>
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>

" General editor behavior
" -----------------------
" Enable syntax display, flexible cursor movement, mouse support, and visual
" guides for the current position and an 80-column text width.
syntax on
set nrformats=
set whichwrap=b,s,h,l,<,>,[,],~
set mouse=a
set cursorline
set cursorcolumn
set colorcolumn=80

" Automatic configuration reload
" -------------------------------
" Reload the active vimrc after it is saved so changes apply immediately.
augroup source-vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

" Comment continuation
" --------------------
" Do not insert a comment leader automatically after Enter or the "o" command.
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END

" HTML and XML editing
" --------------------
" Trigger tag completion after typing a closing-tag prefix.
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END

" File-specific behavior
" ----------------------
" Wrap plain-text files at 78 columns and restore the cursor's last position.
if has('autocmd')
  augroup redhat
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  augroup END
endif
