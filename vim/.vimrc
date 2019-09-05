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
set mouse=a

let g:solarized_termcolors=256
set background=dark
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

map <C-o> :NERDTreeToggle<CR>
map <C-p> :Files<CR>

" Persistent undo handling
set undofile
" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir
" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
   let myUndoDir = expand(vimDir . '/undodir')
   " Create dirs
   call system('mkdir ' . vimDir)
   call system('mkdir ' . myUndoDir)
   let &undodir = myUndoDir
   set undofile
endif
