" Change terminal title
set title

" Determine type of file
filetype indent plugin on

" Tab settings
set shiftwidth=4
set tabstop=4
set softtabstop=2
set expandtab
set smarttab
set autoindent

" Better command-line completion
set wildmenu
set nohlsearch
set incsearch
set ignorecase
set smartcase

set hidden

" Enable syntax highlighting
syntax on

" Display line numbers
set number

" Enable use of the mouse for all modes
set mouse=a

" Enable 256-color mode
set t_Co=256

" Dialogue asking if you wish to save changed files.
set confirm

"Maps
map <C-\> :NERDTreeToggle<CR>
map <C-z> <NOP>
map <F2> :bprevious<CR>
map <F3> :bnext<CR>

" Remove trailing whitespaces on save for specific file types
autocmd FileType c,cpp,python,ruby autocmd BufWritePre <buffer> :%s/\s\+$//e

" Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Syntastic Checkers
" Recommended syntastic features
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" Add some fancy symbols for the error and warning messages.
let g:syntastic_error_symbol='✗'
let g:syntastic_style_error_symbol='✠'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_warning_symbol='≈'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_enable_signs=1

let g:syntastic_python_checkers = ['pep8']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_javascript_checkers = ['jshint']

" path to directory where library can be found
"let g:clang_library_path='/usr/lib/llvm-3.8/lib'
" or path directly to the library file
"let g:clang_library_path='/usr/lib64/libclang.so.3.8'
let g:clang_library_path='/usr/lib/llvm-3.5/lib/libclang.so.1'

" Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" Autocomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Vundle
"filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-markdown'
Plugin 'scrooloose/syntastic'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Rip-Rip/clang_complete'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

" Theme
colorscheme 1989

" Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
