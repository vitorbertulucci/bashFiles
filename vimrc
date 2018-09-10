if &compatible
  set nocompatible
endif

let dein_dir=$VIM_DIR . "/dein"

let dein_repo=dein_dir . "/repos/github.com/Shougo/dein.vim"

" Required:
let &runtimepath.="," . dein_repo

" Required:
call dein#begin(dein_dir)

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neocomplete.vim')
call dein#add('hail2u/vim-css3-syntax')
call dein#add('jpo/vim-railscasts-theme')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('nono/vim-handlebars')
call dein#add('tomtom/tcomment_vim')
call dein#add('bling/vim-airline')
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamemod = ':t'
call dein#add('chriskempson/base16-vim')
" call dein#add('dandorman/vim-colors')
call dein#add('roman/golden-ratio')
call dein#add('MarcWeber/vim-addon-mw-utils')
call dein#add('tomtom/tlib_vim')
call dein#add('ajh17/VimCompletesMe')
call dein#add('janko-m/vim-test')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('rust-lang/rust.vim')
call dein#add('ntpeters/vim-better-whitespace')
call dein#add('peterhoeg/vim-qml')
" call dein#add('scrooloose/nerdtree')
call dein#add('neovimhaskell/haskell-vim')
"call dein#add('farseer90718/vim-taskwarrior')
call dein#add('posva/vim-vue')
  let g:vue_disable_pre_processors=1
" call dein#add('darthmall/vim-vue')
call dein#add('digitaltoad/vim-pug')
" You can specify revision/branch/tag.
"call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
" call dein#add('jacoborus/tender.vim')
" call dein#add('isRuslan/vim-es6')
" call dein#add('othree/yajs.vim')
call dein#add('beigebrucewayne/Turtles')
call dein#add('jacoborus/tender.vim')
call dein#add('tpope/vim-vinegar')
call dein#add('hzchirs/vim-material')

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

set number " line numbering
" set t_Co=256 " Force 256 colors
set t_ut=
syntax enable

set cul
set cuc
" :highlight ExtraWhitespace ctermbg=red guibg=red
augroup syntaxgroup
 autocmd!
  autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
  autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/
augroup END


" Explorer configuration
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2
let g:netrw_altv = 1
let g:netrw_winsize = 10
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

map <Space> :bnext<cr>
map N :NERDTreeToggle<cr>
map <F2> :Strip<cr>
map <C-Right> <c-w>l
map <C-Left> <c-w>h
map <C-Up> <c-w>k
map <C-Down> <c-w>j
"map <Left>  :echo "no!"<cr>
"map <Right> :echo "no!"<cr>
"map <Up>    :echo "no!"<cr>
"map <Down>  :echo "no!"<cr>
" map m "+y
"nnoremap <C-y> "+y
"vnoremap <C-y> "+y
"nnoremap <C-p> "+gP
"vnoremap <C-p> "+gP
set clipboard=unnamedplus
nnoremap ; :
vnoremap ; :
inoremap hl <esc>
" nnoremap <cr> :nohlsearch<cr>

nnoremap J mzJ`z
set showcmd
set encoding=utf-8
set scrolloff=3
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hlsearch
set background=dark
set incsearch
set ignorecase
set smartcase
"set background=dark
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*



nmap :E :Explore
augroup filegroup
  autocmd Filetype html setlocal ts=2 sw=2 expandtab
  autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
  autocmd Filetype typescript setlocal ts=4 sw=4 expandtab
  autocmd Filetype python setlocal ts=4 sw=4 expandtab
  autocmd Filetype c setlocal ts=4 sw=4 expandtab
  autocmd Filetype cpp setlocal ts=8 sw=4 smarttab softtabstop=0 expandtab
augroup END

" colorscheme railscasts
" colorscheme vim-material
" colorscheme molokai
" colorscheme monokai
" colorscheme afterglow
colorscheme tender
" colorscheme turtles

noswapfile
