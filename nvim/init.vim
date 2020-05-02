let base16colorspace=256
colorscheme base16-eighties
set number relativenumber
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

au BufRead,BufNewFile *.ypp set filetype=yacc
au BufRead,BufNewFile *.fish set filetype=fish
au BufRead,BufNewFile *.pro set filetype=prolog
au BufRead,BufNewFile *i3/config set filetype=i3config

autocmd Filetype go setlocal noexpandtab

":hi Pmenu ctermbg=08 ctermfg=15
":hi PmenuSel ctermbg=07 ctermfg=15

set ignorecase
set smartcase

nnoremap <silent> <C-l> :nohlsearch<CR><C-l>

set incsearch
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
set laststatus=2

let g:livepreview_previewer = 'evince'

let g:ackprg = 'ag --nogroup --nocolor --column'

let g:ale_fixers = {'vue': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fix_on_save = 1
let g:ale_linter_aliases = {'vue': ['javascript', 'html', 'scss']}

let g:mkdp_browser = 'qutebrowser'

" let g:indent_guides_guide_size = 1
" let g:indent_guides_color_change_percent = 3
" let g:indent_guides_enable_on_vim_startup = 1

let g:rainbow_active = 1

map <silent> <F3> :NERDTreeToggle<CR>
map <silent> <F2> :Files<CR>
map <silent> <F4> :syntax sync fromstart<CR>
nnoremap <SPACE> <Nop>
let mapleader = " "

call plug#begin('~/.local/share/nvim/plugged')
" be sure to read full install instructions. this still needs
" you to cd ~/.vim/plugged/YouCompleteMe
" python ./install.py --js-completer
Plug 'Valloric/YouCompleteMe'
Plug 'posva/vim-vue'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'chriskempson/base16-vim'
Plug 'ap/vim-css-color'
Plug 'leafgarland/typescript-vim'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
" Plug 'frazrepo/vim-rainbow'
Plug 'easymotion/vim-easymotion'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/goyo.vim'
Plug 'tomtom/tcomment_vim'
Plug 'luochen1990/rainbow'
Plug 'vim-scripts/DrawIt'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'xuhdev/vim-latex-live-preview'
call plug#end()

if has("termguicolors")
    set termguicolors
endif

hi Normal guibg=NONE ctermbg=NONE
