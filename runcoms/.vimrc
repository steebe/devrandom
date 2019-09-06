"Colored and syntax settings
colorscheme slate "koehler
syntax on

"Smart paste
set paste

"Indent settings
set smartindent
set autoindent
set cindent

"Enhanced command-line 
set wildmenu

"Line numbers
set number

"Tab width
set tabstop=4
set softtabstop=4 "Now, tabs are spaces. 
set expandtab

"Always show status line
set laststatus=1

"Show cursor position
set ruler
"set cursorline "actually really annoying

"Show title in title bar
set title

"Scroll start settings
set scrolloff=5

"Language Dev Support

"java:
:inoreabbrev jmain public static void main(String[] args){}
:inoreabbrev jprint System.out.println("");
:inoreabbrev jfor for(int i = 0; i < list.size(); i++) 


"Centralized backups, swapfiles, undo history
"set backupdir=~/.vim/backups
"set directory=~/.vim/swaps
"if exists("&undodir")
"	set undodir=~/.vim/undo
"endif

"set viminfo+=! "Make sure vim history works


