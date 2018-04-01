 " -------- vundle
 set nocompatible              " be iMproved, required
 filetype off                  " required

 " set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'

 " My bundles
 Plugin 'ctrlp.vim'
 Plugin 'vim-scripts/a.vim'
 Plugin 'Valloric/YouCompleteMe'

 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
 " To ignore plugin indent changes, instead use:
 "filetype plugin on
 "
 " Brief help
 " :PluginList       - lists configured plugins
 " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
 "
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line
 " -------- end vundle

 set nocompatible " We use a vim
 set autoindent
 "set cindent
 set smartindent
 set tabstop=2       " Tabs are two characters
 set shiftwidth=2    " Indents are two charactes too
 set expandtab       " Do not use tabs
 set ruler           " show line/column numbers on the status bar.
 "
 syntax on           " Turn on syntax hilighting
 "
 set hlsearch        " Hilight the search results
 set incsearch       " Incrementally search. Like Emacs
 set matchpairs+=<:> " Also match <> when pressing %
 set showmatch
 set laststatus=2
 set autochdir
 "
 " Minimalistic gui
 "set guifont=Andale\ Mono\ 9
 "set guifont=monospace\ 8
 "set guifont=Nimbus\ Mono\ L\\,\ 9
 " on OsX, use this
 "set guifont=Monaco:h14
 "
 "
 " Add spell checking
 if exists("loaded_vimspell")
   set spell_auto_type="tex,mail,text,html,sgml,otl"
   :SpellAutoEnable
 endif
 "
 "set wildmode=longest " Make tabcompletion behave correctly
 set selection=exclusive "  Only select up to not including last character
 set ignorecase " Ignore case when searching lowercase
 set smartcase " Ignore case when searching lowercase
 "
 "
 " set cinoptions={1s,:0,l1,g0,c0,(0,(s,m1 " VTK, ITK style indenting
 "
 " Fix for Makefiles do tabs
 :autocmd BufRead,BufNewFile [Mm]akefile :set noexpandtab
 highlight SpellErrors  guibg=Red guifg=Black
 set wildmode=longest " Make tabcompletion behave correctly 
 "For Tlist plugin
 let Tlist_Ctags_Cmd = "/home/utkarsh1/Software/ctags-5.5.4/ctags"
 :autocmd BufNewFile,BufRead *.wiki setf Wikipedia
 :autocmd BufNewFile,BufRead *.wst :setf  html
 :autocmd BufNewFile,BufRead *.pvsm :setf  xml
 :autocmd BufNewFile,BufRead *.txx :setf  cpp
 :autocmd BufNewFile,BufRead *.rdmf :setf  xml
 :autocmd BufNewFile,BufRead *.cg :setf  cg
 :autocmd BufNewFile,BufRead *.cu :setf  cpp
 :autocmd BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl :setf glsl
 :autocmd BufNewFile,BufRead *.as :setf actionscript
 :autocmd BufNewFile,BufRead *.mxml :setf mxml
 :autocmd BufNewFile,BufRead *.cxx,*.h,*.cpp,*.txx,*.in,*.tex set spell
" :autocmd BufRead,BufNewFile *.cmake,*.cmake.in runtime! indent/cmake.vim 
" :autocmd BufRead,BufNewFile *.cmake,*.cmake.in setf cmake
" :autocmd BufRead,BufNewFile CMakeLists.* :runtime! indent/cmake.vim 
" :autocmd BufRead,BufNewFile CMakeLists.* :setf cmake
" :autocmd BufNewFile,BufRead *.py :set tabstop=4 
" :autocmd BufNewFile,BufRead *.py :set shiftwidth=4

" Map Ctrl-Tab, C-shift-tab, Ctl-T to NextTab, PrevTab, NewTab
map <C-Tab> :tabn<CR>
imap <C-Tab> <C-O>:tabn<CR>
map <C-S-Tab> :tabp<CR>
imap <C-S-Tab> <C-O>:tabp<CR>
map <C-T> :tabnew<CR>
imap <C-T> <C-O>:tabnew<CR>

" In normal mode, map Ctrl+n to next buffer and Ctrl+m to previous buffer
nmap <C-n> :bnext<CR>
nmap <C-m> :bprevious<CR>

highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

:set textwidth=80

" set colorscheme
" colorscheme smyck
colorscheme desert

" CtrlP settings
" This makes it easier to match files.
let g:ctrlp_regexp=1
let g:ctrlp_max_files=0

" a.vim settings
let g:alternateExtensions_h = "c,cpp,cxx,cc,CC,txx,TXX,hxx,HXX"
let g:alternateExtensions_hxx = "h,H"
let g:alternateExtensions_HXX = "H,h"

" set shell to bash since fish doesn't work.
set shell=/bin/bash
