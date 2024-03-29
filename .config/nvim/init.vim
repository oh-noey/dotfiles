"""""""""""
" Plugins "
"""""""""""
call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
" Themes
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'

call plug#end()
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

syntax on
colorscheme nord
set background=dark
hi Normal guibg=NONE ctermbg=NONE
let g:airline_theme='nord'


""""""""
" Misc "
""""""""
set softtabstop=4
set expandtab                                      " tabs are spaces
set mouse=a                                        " Enable mousemode
filetype plugin indent on                          " auto indent based on filetype
set tabstop=4                                      " use 4 spaces for tabs
set shiftwidth=4                                   " when indenting with '>', use 4 spaces
set expandtab                                      " 
set whichwrap+=<,>,h,l,[,]                         " automatically wrap lines
set updatetime=100                                 " Change update time for more responsive plugins
set backspace=indent,eol,start                     " Enable backspace in insert mode

"""""""""
" Style "
"""""""""
syntax on
set number
set laststatus=2                                   " Enable status line (activates airline)
set noshowmode

"""""""""""
" Airline "
"""""""""""
let g:airline_powerline_fonts = 1

" let g:airline_left_sep = ''                        " Fix powerline font symbols
" let g:airline_left_alt_sep = ''                    " ^
" let g:airline_right_sep = ''                       " ^
" let g:airline_right_alt_sep = ''                   " ^
" let g:airline_symbols.branch = ''                  " ^
" let g:airline_symbols.readonly = ''                " ^
" let g:airline_symbols.linenr = ''                  " ^

let g:airline#extensions#tabline#enabled = 1        " Show tabline
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#tab_nr_type = 1    " tab number

" let g:airline_symbols.space = "\u2500"

" let g:airline#extensions#ale#enabled = 1
let g:airline_skip_empty_sections = 1

hi airline_c  ctermbg=NONE guibg=NONE
hi airline_tabfill ctermbg=NONE guibg=NONE

""""""""""""
" Startify "
""""""""""""
let g:startify_fortune_use_unicode = 1

""""""""""""
" NerdTree "
""""""""""""
" autocmd vimenter * if !argc() |  Startify | NERDTree | wincmd w | else | NERDTree | endif " Auto open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Auto close
set fillchars+=vert:\  
hi VertSplit cterm=NONE ctermfg=None
