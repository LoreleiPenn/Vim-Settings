let g:indentLine_concealcursor = 'nc'
let g:loaded_python_provider = 0
let g:python3_host_prog = "/usr/bin/python"
if has("win32")
    let g:python3_host_prog = "~/Miniconda3/python.exe"
    set shell=cmd.exe
endif
if has("termux")
    let g:python3_host_prog = "/data/data/com.termux/files/usr/bin/python"
endif

"map <leader>s :source ~/.config/nvim/init.vim<CR>
map <leader>w :w!<CR>
map <leader>s :w!<CR>
map <leader>m :lnext<CR>
" map <leader>m :lprev<CR>

"set guifont=CodeNewRoman\ Nerd\ Font\ Mono\ 14
"set guifontwide=VL\ Gothic\ 13

set number relativenumber
" set mouse=a

" Disable arrow keys for training.
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

" Enable folding
set foldmethod=indent
set foldlevel=99

xnoremap * :<C-u>call <SID>VSetSearch('/')<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch('?')<CR>/<C-R>=@/<CR><CR>

function! s:VSetSearch(cmdtype)
    let temp = @s
    norm! gv"sy
    let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\n', '\\n', 'g')
    let @s = temp
endfunction

" Syntastic stuff BEGIN
let g:syntastic_cpp_checkers = ['clang_tidy', 'clang++', 'gcc']
let g:syntastic_cpp_compiler = 'clang++'
" let g:syntastic_cpp_compiler_options = ' -std=c++17 -stdlib=libc++'
let g:syntastic_cpp_compiler_options = ' -std=c++17'
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_auto_refresh_includes = 1
" let g:syntastic_cpp_clang_tidy_args = '-checks=*'
let g:syntastic_cpp_clang_tidy_args = ''
let g:syntastic_python_checkers=['python', 'flake8']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
" let g:syntastic_go_checkers = ['golint', 'govet']
let g:syntastic_aggregate_errors = 1
let g:syntastic_auto_loc_list=1
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_error_symbol='✗'
let g:syntastic_always_populate_loc_list=1
let g:airline#extensions#syntastic#enabled = 1
" Syntastic stuff END

" Colour scheme
" silent! colorscheme dracula
" let g:airline_theme='dracula'
silent! colorscheme nord
let g:airline_theme='nord'

" Tab settings
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=120
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END
