set nocompatible
filetype plugin indent on

" Important!!
if has('termguicolors')
    set termguicolors
endif
if !exists('+colorcolumn')
  finish
endif

let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

" debugger
packadd termdebug

" Python support
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'
let g:python2_host_prog = '/usr/bin/python2'

" set the runtime path for vundle
set rtp+=~/.vim/bundle/Vundle.vim

" start vundle environment
call vundle#begin()
    " Let vundle manage itself
    Plugin 'VundleVim/Vundle.vim'
    " To install auto-complete syntax
    Plugin 'Valloric/YouCompleteMe'
call vundle#end()
" Setting default colorscheme
colorscheme catppuccin-macchiato

set cursorline
set hidden
set backspace=indent,eol,start
" For enumeration of each line
set number
" For text wrap
set wrap
set linebreak
" To get 4 spaces on each tab
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
" To remove annoying scratch window
set completeopt-=preview
" To fix retarded new window spawn position.
set splitright
set splitbelow
" To make tabs, eol and trails visible
set list
set listchars=trail:.,precedes:«,extends:»,tab:——-,nbsp:␣
" Color column.
let &colorcolumn=99

" To disable dot repeatable
let g:pear_tree_reapeatable_expand = 0
let g:termdebugger = "rust-gdb"
" So that ddebugger opens in the right
let g:termdebug_wide = 1

" Packer installations
lua require('packer_plug')
" Floating Terminal
lua require('tgltrm')
" nvim tree
lua require('nvimreq')
" Blank line setup
lua require('blanklikereq')
" Markdown Preview
lua require('md-keymap')
" Debugger
lua require('dapui').setup()
" Tree Sitter
lua require('treesitter')
" Lsp
lua require('lsp')
" Dap
lua require('dap_config')
" Main keymaps
lua require('keymaps')
" Telescope
lua require('telescope')

" Syntax highlight
au BufRead,BufNewFile *.tl set filetype=tulang
