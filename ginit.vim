
"let g:python_host_prog  = "/usr/bin/python2"
"let g:python3_host_prog = "/usr/bin/python"

"map <leader>s :source ~/.config/nvim/init.vim<CR>
"map <leader>w :w!<CR>
"map <leader>s :w!<CR>

"set guifont=CodeNewRoman\ Nerd\ Font\ Mono\ 14
"set guifontwide=VL\ Gothic\ 13

" GuiFont! SauceCodePro Nerd Font Mono:h12
if exists("g:neovide")
    set guifont=Hack\ Nerd\ Font\ Mono:h10
else
    GuiFont! Hack Nerd Font Mono:h10
    GuiTabline 0
endif
