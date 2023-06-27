set nocompatible
filetype off
filetype plugin indent on
" debugger
packadd termdebug

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
let &colorcolumn=join(range(100,999),",")

" Key Mapping
nnoremap <C-n> :NvimTreeCollapse<CR>
nnoremap <C-t> :NvimTreeToggle<CR>
nnoremap <C-f> :NvimTreeFindFile<CR>
nnoremap <A-n> :NvimTreeFocus<CR>
nnoremap <A-t> :tabclose<CR>
inoremap jj <Esc>
inoremap kk <Esc>
inoremap kk <Plug>(PearTreeFinishExpansion)
inoremap jj <Plug>(PearTreeFinishExpansion)
nnoremap <SPACE><CR> O<Esc>
noremap <CR> o<Esc>
tnoremap <leader><SPACE> <C-\><C-n>
nnoremap <leader>gr :Telescope live_grep<CR>
nnoremap <leader>gc :Telescope git_commits<CR>
nnoremap tn :tabnew<CR>

" Important!!
if has('termguicolors')
    set termguicolors
endif
if !exists('+colorcolumn')
  finish
endif

" Error highliting customization
highlight SpellBad cterm=underline

" Make NERDTree pretty
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
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
