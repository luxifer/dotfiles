set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'

call vundle#end()
filetype plugin indent on

syntax on
set number
set background=dark
colorscheme solarized
set mouse=a

if !has('gui_running')
	set t_Co=256
endif

map <C-o> :NERDTreeToggle<CR>
map <C-p> :Files<CR>

