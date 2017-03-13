" Vimscript plugin manager {{{
execute pathogen#infect()
syntax on
filetype plugin indent on
" }}}
" Vimscript basic settings {{{
set encoding=utf-8
colorscheme molokai
"set tabstop=2 "number of visual paces per TAB
set softtabstop=2 " during editing also tab will be counted as spaces
set shiftwidth=2
set expandtab "tabs are spaces
set showcmd "show command in bottom bar
set cursorline "highlight current line
syntax enable "enable syntax processing
set number 
set relativenumber
set wildmenu " visual autocomplete for command menu
set showmatch "highligh matching [{()}]
set incsearch " highlight the next result as characters are entered set hlsearch  " highlighting matches
" }}}
" Leader {{{
let mapleader="\<Space>" 
" }}}
" Vimscript normal mode mappings {{{
"go to the front of the line
nnoremap B ^
"go to the end of the line
nnoremap E $
"pressing j will also be going to the wrapped lines downwards.
nnoremap j gj
"pressing k will also be going to the wrapped lines upwards.
nnoremap k gk
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
"opens vimrc file in the vertical split mode
nnoremap <leader>ev :vsp $MYVIMRC<CR>
"loads the vimrc file for updating the changes.
nnoremap <leader>sv :source $MYVIMRC<cr>
"swap the current line with the next line
nnoremap - ddp
"swap the current line with the previous line
nnoremap _ ddkP
" surround the current word in double quotes.
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <c-q> :execute "normal! q!"<cr>
" }}}
" Vimscript insert mode mappings {{{
inoremap jk <esc>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
" making letters of a word capital look i am using w instead of W
inoremap <c-u> <esc>vwUi
" }}}
" Vimscript visual mode mappings {{{
vnoremap <c-u> <esc>vwUv
" }}}
"Vimscript autogroups {{{
augroup Filetype cpp
        autocmd!
        autocmd Filetype cpp nnoremap <buffer> <leader>c I//<esc>
        autocmd BufNewFile *.cpp -r ~/.template.cpp
        autocmd Filetype cpp :iabbrev <buffer> ret return
augroup END
" }}}
" Vimscript operator-pending mappings {{{
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap p i(
onoremap il( :<c-u>normal! F)vi(<cr>
" }}}
" Vimscript statusline settings {{{
":set statusline=%f         " Path to the file
":set statusline+=%=        " Switch to the right side
":set statusline+=%l        " Current line
":set statusline+=/         " Separator
":set statusline+=%L        " Total lines
" }}}
" Vimscript filetype settings ---------{{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
" Powerline settings {{{
filetype plugin indent on
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2
" }}}
filetype indent on 
nnoremap <F8> :!g++ % && ./a.out <CR>
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:clang_library_path='/usr/lib/llvm-3.4/lib'
nnoremap <C-g> :NERDTreeToggle<CR>
set clipboard=unnamed
