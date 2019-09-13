set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" ---------- General configuration ----------

set history=400

set encoding=utf-8
set fileencoding=utf-8

set clipboard=unnamed  " Use the OS clipboard by default
set backspace=indent,eol,start  " Make backspace behave like every editors

set ignorecase  " Ignore case when we search something ...
set smartcase  " ... Except if the research contains uppercase


" ---------- Interface configuration ----------

syntax on

set number
set numberwidth=1
set cursorline  " Highlight current line
set mouse=a
set mousehide  " Hide the mouse when it's not used
set ruler  " Show the cursor position
set belloff=all

set showmode  " Show the filename in the window titlebar


" ---------- Coding configuration ----------

set autoindent
set smartindent

set expandtab  " Htting tab in insert mode will procude the appropriate number of space
set tabstop=4  " Tell vim how many columns a tab counts for
set shiftwidth=4  " Control how many columns text is indented with the reindent operations

set showmatch       " Montre le/la crochet/parenthèse/croche correspondante
set matchtime=2     " pendant 2 dixièmes de secondes
set matchpairs=(:),[:],{:},<:>

" give us nice EOL (end of line) characters
set list
set listchars=tab:▸\ ,eol:¬

" Remember the cursor position when we reopen the file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" ---------- Vundle plugins ----------

" Modules
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'

" Themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'w0ng/vim-hybrid'
Plugin 'sickill/vim-monokai'

call vundle#end()
filetype plugin indent on


" ---------- Themes configuration ----------

function Solarized(background)
    colorscheme solarized
    let g:solarized_termcolors=256
    let g:solarized_contrast="high"
    let g:solarized_visibility="high"

    if a:background == "dark"
      set background=dark

    else
      set background=light
    endif
endfunction

set t_Co=256

let colors="hybrid"

if colors == "hybrid"
    colorscheme hybrid
    let g:hybrid_user_Xressources = 1
    set background=dark

elseif colors == "solarized-dark"
    call Solarized("dark")

elseif colors == "solarized-light"
    call Solarized("light")

elseif colors == "monokai"
    colorscheme monokai
endif


" ---------- Package configurations ----------

" NERDTree CONFIGURATION
" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" ---------- Mapping ----------

map <C-n> :NERDTreeToggle<CR>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
