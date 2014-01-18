set number
syntax on
colorscheme 256-jungle
set backspace=2
set expandtab
set tabstop=4
set shiftwidth=4

execute pathogen#infect()
let g:syntastic_c_checkers=['gcc']

set tags=./tags;$OS161KERN
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'klen/python-mode'
Bundle 'Valloric/YouCompleteMe'

" The bundles you install will be listed here

filetype plugin indent on

" The rest of your config follows here

augroup vimrc_autocmds
        autocmd!
        " highlight characters past column 120
        autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
        autocmd FileType python match Excess /\%120v.*/
        autocmd FileType python set nowrap
augroup END

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" YouCompleteMe Settings
let g:ycm_collect_identifiers_from_tags_files = 1

" Syntastic
let g:syntastic_check_on_open=1
