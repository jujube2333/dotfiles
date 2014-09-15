set nocompatible

"NeoBundle start
set runtimepath+=$HOME/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

"plugins
"vim上でprogramを動かす
NeoBundle 'thinca/vim-quickrun'
"haskell用highlight
NeoBundle 'dag/vim2hs'
"カッコを自動で閉じてくれるいいやつ
NeoBundle 'Townk/vim-autoclose'
"最近使ったfileの表示
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
"複数行comment in/out
NeoBundle 'tomtom/tcomment_vim'
"indent-guide
" NeoBundle 'nathanaelkane/vim-indent-guides'

call neobundle#end()

filetype indent on
filetype plugin on

NeoBundleCheck

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"1インデント目からguide
let g:indent_guides_start_level=1
"colorを手動設定
let g:indent_guides_auto_colors=0
"color設定(何故か機能しない)
hi IndentGuidesOdd  ctermbg=darkgray
hi IndentGuidesEven ctermbg=gray
"vim起動と同時にguide
let g:indent_guides_enable_on_vim_startup=1
"guide幅
let g:indent_guides_guide_size=1
" let g:indent_guides_guide_size=&tabstop

set background=dark
set number
set ruler
set cursorline
" set cursorcolumn
set laststatus=2
set showmatch
set backspace=indent,eol,start
set hlsearch
set incsearch
set wrapscan
set gdefault
set autoindent
set autowrite
set cmdheight=1
set encoding=utf-8
set fileencodings=iso-2022-jp,iso-2022-jp-3,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8,utf-16
set nostartofline
set termencoding=utf-8
set title
set wildmenu wildmode=list:full
syn on
syntax on

