set nocompatible

"NeoBundle start
set runtimepath+=$HOME/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

"plugins
"vim$B>e$G(Bprogram$B$rF0$+$9(B
NeoBundle 'thinca/vim-quickrun'
"haskell$BMQ(Bhighlight
NeoBundle 'dag/vim2hs'
"$B%+%C%3$r<+F0$GJD$8$F$/$l$k$$$$$d$D(B
NeoBundle 'Townk/vim-autoclose'
"$B:G6a;H$C$?(Bfile$B$NI=<((B
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
"$BJ#?t9T(Bcomment in/out
NeoBundle 'tomtom/tcomment_vim'
"indent-guide
" NeoBundle 'nathanaelkane/vim-indent-guides'
"python$BJd40(B
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'Yggdroot/indentLine'

call neobundle#end()

filetype indent on
filetype plugin on

NeoBundleCheck

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" "1$B%$%s%G%s%HL\$+$i(Bguide
" let g:indent_guides_start_level=1
" "color$B$r<jF0@_Dj(B
" let g:indent_guides_auto_colors=0
" "color$B@_Dj(B($B2?8N$+5!G=$7$J$$(B)
" hi IndentGuidesOdd  ctermbg=darkgray
" hi IndentGuidesEven ctermbg=gray
" "vim$B5/F0$HF1;~$K(Bguide
" let g:indent_guides_enable_on_vim_startup=1
" "guide$BI}(B
" let g:indent_guides_guide_size=1
" let g:indent_guides_guide_size=&tabstop
" rename$BMQ$N%^%C%T%s%0$rL58z$K$7$?$?$a!"Be$o$j$K%3%^%s%I$rDj5A(B
command! -nargs=0 JediRename :call jedi#rename()
" python$B$N(Brename$BMQ$N%^%C%T%s%0$,(Bquickrun$B$H$+$V$k$?$a2sHr$5$;$k(B
let g:jedi#rename_command = ""
let g:jedi#documentation_command = "k"
" docstring$B$OI=<($7$J$$(B
autocmd FileType python setlocal completeopt-=preview

set background=dark
set number
set ruler
" set cursorline
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

