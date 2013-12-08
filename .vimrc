set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'
Bundle 'gmarik/vundle'
Bundle 'kaichen/vim-snipmate-ruby-snippets'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-sensible'

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles

" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

"Filetypes
filetype plugin indent on
let snippets_dir = substitute(globpath(&rtp, 'active-snippets/'), "\n", ',', 'g')

"Colors
colorscheme Sunburst

"Soft tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"Line numbers
set number

"Search
set hlsearch
set ignorecase
set smartcase
map <C-t> :CtrlPBufTagAll<CR>

"Find what?
command! -nargs=1 Find Ack <args> **/*.(css|erb|feature|haml|htm|html|js|json|markdown|md|prawn|rabl|rake|rb|rxls|vim|yml)
map <leader>f :exec "Find ".input("Find what? ")<cr>

"Show hidden files on NERDTree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
map <C-n> :NERDTreeFind<CR>

"Invisibles
set listchars=tab:▸\ ,eol:¬
set list

"Mappings for vim-rspec
map <leader>t :call RunCurrentSpecFile()<CR>
map <leader>s :call RunNearestSpec()<CR>
map <leader>l :call RunLastSpec()<CR>
map <leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "!rspec --require emoji-rspec --format life {spec}"

"Folding
set foldmethod=syntax
highlight Folded guibg=grey guifg=blue
autocmd BufEnter * exe "normal zR"

"Status line
hi StatusLine cterm=NONE ctermbg=darkgreen ctermfg=black gui=bold guibg=green guifg=black
hi StatusLineNC cterm=NONE ctermbg=black ctermfg=lightgray gui=bold guibg=black guifg=lightgray
