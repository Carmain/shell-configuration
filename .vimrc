" @author Martin Billard 
" https://github.com/Carmain/shell-configuration

execute pathogen#infect()


" Basic configuration
syntax enable
set t_Co=256

set number
set mouse=a

set tabstop=4     " Tell vim how many columns a tab counts for
set expandtab     " Htting tab in insert mode will procude the appropriate number of space
set shiftwidth=4  " Control how many columns text is indented with the reindent operations
set smartindent   " Smart indent
set autoindent

set ignorecase
set showmode
set ruler

" Remember the cursor position when we reopen the file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" Themes
" hybrid configuration
let g:hybrid_user_Xressources = 1 
set background=dark

" solarized configuration (comment the hybrid configuration if you want to use it)
" set background=dark  " (dark or light)

" Availables colorscheme :
"   - solarized (set background to dark or light)
"   - monokai
"   - hybrid
colorscheme hybrid


" NERDTree CONFIGURATION
" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" Mapping
map <C-n> :NERDTreeToggle<CR> 
