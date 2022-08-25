" Turn on syntax highlighting
syntax on
" Turn on smart auto-indentation
set autoindent
set smartindent
filetype plugin indent on
" Turn on auto-backup before editing
set backup
" Use ~/.backup as the backup directory
set backupdir=~/.backup
" Replace all tab with spaces
set expandtab
" Wrap long line at reasonable places (only affect 
" display, not content)
set wrap
set linebreak
" Make vim less like vi
set nocompatible
" Make default indent at 2 spaces
set shiftwidth=2
" Set tab stop to 2
set tabstop=2

set noshiftround
set formatoptions=tcqrn1
set softtabstop=2

colorscheme molokai
set mouse+=a

set number
execute pathogen#infect()
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |   
  \ quit | endif
autocmd FileType java setlocal omnifunc=javacomplete#Complete
let g:JavaComplete_ClosingBrace = 1
let g:rainbow_active = 1
let delimitMate_expand_cr = 1

" The following change the backspace on old Windows machine
set t_kb=
abbr psvm public static void main(String[] args){<CR>}<esc>O
abbr sout System.out.println("");<esc>2hi

abbr forl for (int i = 0; i < ; i++) {<esc>7hi
abbr tryb try {<CR>} catch (Exception ex) {<CR> ex.printStackTrace();<CR>}<esc>hx3ko
abbr const public static final int
abbr javadocs /** A factory method to initialize a Lazy object given a producer.<CR><CR>@param <S> the type of the value in the Lazy object <CR>@param producer the production function which will be called to initialize the value when needed <CR>@return new Lazy object containing the producer given <CR>/


fun! FormatMyFile()
  normal gg=G
endfun

command Format call FormatMyFile()
