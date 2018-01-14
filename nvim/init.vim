set nu

execute pathogen#infect()
let g:rustfmt_autosave = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ }

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf'
Plug 'rust-lang/rust.vim'
Plug 'roxma/nvim-completion-manager'
Plug 'racer-rust/vim-racer'
Plug 'roxma/nvim-cm-racer'
Plug 'sassanh/nvim-cm-eclim'
Plug 'roxma/ncm-clang'

call plug#end()
