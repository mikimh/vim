set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim

syntax enable

set backspace=indent,eol,start	"Make backspace behave liek every other editor.
let mapleader = ','		"The default leader is \, but comma is much better 
set number			"Activate line numbers  

set tabstop=4

"------------Visuals----------------"
colorscheme atom-dark-256 
 
"------------Search----------------"
set hlsearch 
set incsearch 

"------------Mappings--------------"

"Make it easy to edit the Vimrc filr 
nmap <Leader>ev :tabedit ~/.vimrc<cr>

"Add simple highlight removal. 
nmap <Leader><space> :nohlsearch<cr>  

nmap <C-T> :NERDTreeToggle<cr>
nmap <c-R> :CtrlPBufTag<cr>
nmap <c-E> :CtrlPMRUFiles<cr>

"------------Split Managment------"
set splitbelow 
set splitright 

nmap <C-J> <C-W><C-J>   
nmap <C-K> <C-W><C-K> 
nmap <C-H> <C-W><C-H>  
nmap <C-L> <C-W><C-L>  

"-------------Plugins--------------"
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0


"/
"/ Greplace.vim 
"/
set grepprg=ag

let g:grep_cmd_opts = '--line-numbers --noheading'


"------------Auto-Commands--------"

"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END




