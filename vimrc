execute pathogen#infect()

:set relativenumber

" -----------------------------------------------------
" vim-go settings {{{
" -----------------------------------------------------
" let g:go_term_enabled=1 " run commands in a terminal rather than the quickfix window
" let g:go_term_mode="split"
" let g:go_updatetime=1500
let g:go_fmt_command = "goimports" " use goimports rather than gofmt on save
" let g:go_highlight_operators  = 1
" guru is spewing errors so disabled
let g:go_info_mode="guru"
" let g:go_info_mode='gopls'
let g:go_add_tags_transform="snakecase"
let g:go_alternate_mode = "vsplit"
let g:go_auto_sameids = 1
let g:go_auto_type_info = 1
let g:go_decls_mode = 'fzf'
" let g:go_def_mode='gopls'
let g:go_fmt_fail_silently=1
let g:go_gocode_unimported_packages = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters=1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_types = 1
let g:go_list_type = "quickfix"
let g:go_metalinter_command='golangci-lint'
let g:go_snippet_case_type = "camelcase"
let g:go_test_show_name = 1
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
autocmd FileType go nmap <buffer> <leader>e <plug>(go-rename)
autocmd FileType go nmap <buffer> <leader>i <plug>(go-info)
autocmd FileType go nmap <buffer> <leader>d <plug>(go-describe)
au FileType go nmap <Leader>s <Plug>(go-def-split)
au FileType go nmap <Leader>v <Plug>(go-def-vertical)
au FileType go nmap <Leader>l <Plug>(go-metalinter)
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd FileType go nmap <Leader>f :GoDecls<CR>
autocmd FileType go nmap <Leader>F :GoDeclsDir<CR>
" autocmd FileType go nmap <Leader>s :GoDefStack<CR>
autocmd FileType go nmap <Leader>p :GoChannelPeers<CR>

autocmd vimenter * NERDTree

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:ycm_use_clangd = 0

syntax enable
colorscheme molokai

set autoindent
