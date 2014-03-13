 " -------- vundle
 set nocompatible              " be iMproved, required
 filetype off                  " required

 " set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/vundle/
 "call vundle#rc()
 " alternatively, pass a path where Vundle should install bundles
 let path = '~/.vim/installed-bundles'
 call vundle#rc(path)

 " let Vundle manage Vundle, required
 Bundle 'gmarik/vundle'

 " My bundles
 Bundle 'ctrlp.vim'

"" The following are examples of different formats supported.
"" Keep bundle commands between here and filetype plugin indent on.
"" scripts on GitHub repos
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'tpope/vim-rails.git'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"" scripts from http://vim-scripts.org/vim/scripts.html
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"" scripts not on GitHub
"Bundle 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///home/gmarik/path/to/plugin'
"" ...

filetype plugin indent on     " required
 " -------- end vundle



 set nocompatible " We use a vim
 set autoindent
 set cindent
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
 set guifont=Monaco:h14
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
 set cinoptions={1s,:0,l1,g0,c0,(0,(s,m1 " VTK, ITK style indenting
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
 :autocmd BufNewFile,BufRead *.cxx,*.h,*.cpp,*.txx,*.in set spell
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

highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

:set textwidth=80
