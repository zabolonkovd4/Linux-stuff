" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc set nocompatible " Attempt to determine the type of a file based on its name and possibly its " contents. Use this to allow intelligent auto-indenting for each filetype, " and for plugins that are filetype specific.  if has('filetype') filetype indent plugin on endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=4
"------------------------------------------------------------

" Show partial commands in the last line of the screen
set showcmd

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Sets relative line numbers 
set relativenumber

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Sets Dracula color scheme
packadd! dracula
syntax enable
colorscheme dracula

" PLUGINS
" Specify a directory for plugins.
call plug#begin()

" Markdown setip
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Lime lighting highlighting
Plug 'junegunn/limelight.vim'

call plug#end()
