execute pathogen#infect()
filetype plugin indent on 
syntax on

colorscheme gruvbox

set backspace=2
set showmatch
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set number
set smarttab
set expandtab
set termguicolors
set background=dark
set guioptions=
set guifont=Monaco:h12
set incsearch
set number relativenumber
set lazyredraw

autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType markdown setlocal spell
autocmd FileType markdown set spellfile=~/.vimwords.add
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

let NERDTreeShowHidden=1

let mapleader = ","
nmap ; :

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

" Configuration for fzf
" Search project filenames
nmap <leader>f :FZF<CR>

" Search all files with Silver Searcher
nmap <leader>a :Ag<CR>

" Search open buffers
nmap <leader>b :Buffers<CR>

nmap <c-p> <leader>f

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
