set nocompatible               " be iMproved
set encoding=utf-8
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Bundles
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-ragtag'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Colors
syntax on
colorscheme solarized
set background=dark
let g:solarized_termcolors=256
syntax enable

" Line numbers
set number
set numberwidth=1
set scrolloff=5

" Allow usage of mouse in iTerm
set ttyfast
set mouse=a

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" mingz
function mingz () { curl -sL wzrd.in/standalone/"$1"|uglifyjs -mc 2>/dev/null|gzip -c|wc -c;}

" Airline
set laststatus=2
"let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'
if isdirectory(expand("~/.vim/bundle/vim-airline-themes/"))
	if !exists('g:airline_theme')
		let g:airline_theme = 'solarized'
	endif
	if !exists('g:airline_powerline_fonts')
		let g:airline_left_sep='›'  " Slightly fancier than '>'
		let g:airline_right_sep='‹' " Slightly fancier than '<'
	endif
endif

" Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
