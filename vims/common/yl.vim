set nocompatible
set nu rnu
set encoding=utf-8
set ruler
set laststatus=2
set path+=**
set wildmenu
set cpt=.
set backupdir^=~/.backup
set dir^=~/.backup//
set ai noet sw=8 ts=8 sts=0
set ignorecase
set hlsearch
set mouse="a"
syntax enable
colorscheme nord

autocmd FileType help             setlocal nospell
autocmd FileType text,markdown    setlocal textwidth=80 spell spelllang=en_us

autocmd FileType tex              setlocal textwidth=100 spell spelllang=en_us
autocmd FileType tex              normal ;ll
autocmd TextChanged,TextChangedI  *.tex silent :write

autocmd FileType c,cpp            setlocal textwidth=80
autocmd FileType python           setlocal shiftwidth=4 tabstop=4 textwidth=80
autocmd FileType ocaml            setlocal shiftwidth=4 tabstop=4 textwidth=80
autocmd FileType javascript       setlocal shiftwidth=4 tabstop=4 textwidth=80
autocmd FileType vim              setlocal shiftwidth=4 tabstop=4 textwidth=80


let mapleader=" "
let maplocalleader=";"

function OpenVimrc()
	:if !exists("w:prev_vimrc_buff")
	: let w:prev_vimrc_buff=bufnr("%")
	: let w:prev_vimrc_pos=getpos(".")
	:endif
	:badd $MYVIMRC
	:execute "b!" $MYVIMRC
endfunction

function CloseVimrc()
	:exe "bwipe!" $MYVIMRC
	:exe "b!" w:prev_vimrc_buff
	:unlet w:prev_vimrc_buff
endfunction

map gf :edit <cfile><cr>

nmap <leader>ve :execute OpenVimrc()<cr>
nmap <leader>vr :source $MYVIMRC<cr>
nmap <leader>vq :execute CloseVimrc()<cr>:call setpos(".", w:prev_vimrc_pos)<cr>:unlet w:prev_vimrc_pos<cr>

nnoremap <Leader><space> :nohl<cr>
nnoremap <Leader>n :tabn<cr>
nnoremap <Leader>p :tabp<cr>
nnoremap <Leader>c :tabc<cr>

inoremap jk <esc>

vnoremap <c-c> "+y