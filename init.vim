call plug#begin('~/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'Chiel92/vim-autoformat'

call plug#end()

" Theme and visuals
colorscheme gruvbox
set number relativenumber

" Split and theme binds 
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
nmap <silent> <c-t> :NERDTreeToggle<CR>
nmap <silent> <c-n> :vertical split<CR>
nmap <silent> <c-m> :split<CR>
