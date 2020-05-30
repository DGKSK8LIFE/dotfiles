call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'fatih/vim-go'
Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline-themes'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'vim-ruby/vim-ruby'
Plug 'elzr/vim-json'
Plug 'albfan/nerdtree-git-plugin'
Plug 'valloric/youcompleteme'
Plug 'junegunn/fzf'
Plug 'airblade/vim-gitgutter'
Plug 'jparise/vim-graphql'
Plug 'scrooloose/nerdcommenter'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'chiel92/vim-autoformat'
Plug 'vim-airline/vim-airline-themes'
Plug 'sainnhe/vim-color-forest-night'
Plug 'ThePrimeagen/vim-be-good'

call plug#end()

autocmd vimenter * NERDTree
syntax on

filetype plugin indent on

set encoding=utf-8

:set nu! rnu! 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


" Shortcutting split navigation; saving effort:
        map <C-h> <C-w>h
        map <C-j> <C-w>j
        map <C-k> <C-w>k
        map <C-l> <C-w>l

let g:airline_theme='forest_night'
set autoindent

let g:airline#extensions#branch#format = 'Git_flow_branch_format'

let g:airline#extensions#tabline#enabled = 1           " enable airline tabline                                                           
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline                                            
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)      
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab                                                    
let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right                                                           
let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline                                                 
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline                                  
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline               
let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers                                                              
let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline

set termguicolors
let g:forest_night_enable_italic = 1
let g:forest_night_disable_italic_comment = 1

colorscheme forest-night

" unicode symbols
set autoindent

let g:airline_powerline_fonts = 1

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

hi NonText ctermbg=none 
hi Normal guibg=NONE ctermbg=NONE 

let g:tagbar_ctags_bin

let g:python3_host_prog=/usr/bin/python3.8
