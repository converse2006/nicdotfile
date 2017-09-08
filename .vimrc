" Vim, not Vi
set nocompatible

set fileencodings=ucs-bom,utf-8,big5,default,latin1
set fileencoding=utf-8
" Show the code line num
set nu

" Highlight the current line
set cursorline

" Use the mouse in Vim
if has('mouse')
  set mouse=
endif

" Highlight the searching word
set incsearch
set hlsearch

" Enable file type detection
" Automatically do language-dependent indenting, 'cindent' is on in C files, etc.
filetype plugin indent on

" Do not automatically indent when pasting
nmap <F4> :set paste!<BAr>set paste?<CR>
imap <F4> <Esc>:set paste!<BAr>set paste?<CR>
cmap <F4> <Esc>:set paste!<BAr>set paste?<CR>
vmap <F4> <Esc>:set paste!<BAr>set paste?<CR>

" <Tab> as 4 white-spaces
"set expandtab
"set shiftwidth=4
"set tabstop=4
"set softtabstop=4

" In makefile, <Tab> as a real tab
autocmd FileType make setlocal noexpandtab

" Replace all <Tab> with white-spaces in an editing file
nmap <F5> :retab<CR>
imap <F5> <Esc>:retab<CR>
cmap <F5> <Esc>:retab<CR>
vmap <F5> <Esc>:retab<CR>

" Color
set background=dark
set t_Co=8

" Tab page (at the top)
highlight TabLineFill ctermfg=white ctermbg=blue
highlight TabLine ctermfg=black ctermbg=white
highlight TabLineSel ctermfg=white ctermbg=green

" Key mapping for tab page
nmap <C-RIGHT> gt
imap <C-RIGHT> <ESC>gt
cmap <C-RIGHT> <ESC>gt
vmap <C-RIGHT> <ESC>gt
nmap <C-LEFT> gT
imap <C-LEFT> <ESC>gT
cmap <C-LEFT> <ESC>gT
vmap <C-LEFT> <ESC>gT
nmap <C-UP> :tabr<CR>
imap <C-UP> <ESC>:tabr<CR>
cmap <C-UP> <ESC>:tabr<CR>
vmap <C-UP> <ESC>:tabr<CR>
nmap <C-DOWN> :tabl<CR>
imap <C-DOWN> <ESC>:tabl<CR>
cmap <C-DOWN> <ESC>:tabl<CR>
vmap <C-DOWN> <ESC>:tabl<CR>

" Command line (at the bottom)
set ruler
set showcmd
set showmode
set cmdheight=1

" Status line
set ls=2  
set statusline=%<%f\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y
highlight StatusLine ctermfg=blue ctermbg=white
 
" Taglist
nmap <F2> :Tlist<CR>
imap <F2> <Esc>:Tlist<CR>
cmap <F2> <Esc>:Tlist<CR>
vmap <F2> <Esc>:Tlist<CR>
nmap <F3> :wincmd w<CR>
imap <F3> <Esc>:wincmd w<CR>
cmap <F3> <Esc>:wincmd w<CR>
vmap <F3> <Esc>:wincmd w<CR>
let Tlist_Exit_OnlyWindow = 1

" When editing a file, jump to the position edited last time
if has("autocmd")
  autocmd FileType text setlocal textwidth=78
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif

" NERDtree
nnoremap <silent> <C-d> :NERDTreeToggle<CR>
inoremap <silent> <C-d> <Esc>:NERDTreeToggle<CR>
cnoremap <silent> <C-d> <Esc>:NERDTreeToggle<CR>
vnoremap <silent> <C-d> <Esc>:NERDTreeToggle<CR>
let NERDtree_Exit_OnlyWindow = 1

" map sa :exec "/\\(".getreg('/')."\\)\\\\|".expand("<cword>")<CR>
