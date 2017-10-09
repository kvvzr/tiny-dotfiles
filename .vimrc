set title " タイトルを表示
set ruler " カーソル位置の表示
set number " 行番号の表示
set list listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%,eol:$ " 不可視文字の表示
set wrap " 折り返し
set expandtab tabstop=2 shiftwidth=2 " インデントの設定
set whichwrap=b,s,h,l,[,],<,>
set smartindent
set smarttab
set ambiwidth=double
set clipboard+=unnamedplus
set novisualbell t_vb= " ベルを無効化
set nowritebackup nobackup noswapfile " Swapファイルの無効化
set laststatus=2
set ignorecase " 大文字小文字を区別しない
set smartcase " 検索文字に大文字がある場合は区別
set wrapscan " 最後まで検索したら最初に戻る
set incsearch " インクリメンタルサーチ
set hlsearch " 検索文字をハイライト
set showmatch " 対応する括弧のハイライト
set ambiwidth=double " □や○の文字があってもカーソル位置がずれないようにする
set wildmenu " コマンドライン補完するときに強化されたものを使う
set foldmethod=indent
set foldlevel=20
set backspace=indent,eol,start
set conceallevel=0 " Concealをオフ
set viminfo=
set encoding=utf-8

" バックスラッシュやクエスチョンを状況に合わせ自動的にエスケープ
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'

" マウスカーソルを有効化
set mouse=a
if &term =~ "^screen"
    augroup MyAutoCmd
        autocmd VimLeave * :set mouse=
    augroup END

    set ttymouse=xterm2
endif

" 自然な移動
nnoremap j gj
xnoremap j gj
nnoremap k gk
xnoremap k gk

" jj, kkでインサートモードを抜ける
inoremap <silent> jj <ESC>
inoremap <silent> kk <ESC>

noremap <C-j> <esc>
noremap! <C-j> <esc>

" 検索のハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

"dein Scripts-----------------------------
if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=$HOME/.vim/dein.vim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state(expand('$HOME/.vim/dein.vim'))
  call dein#begin(expand('$HOME/.vim/dein.vim'))

  call dein#load_toml(expand('$HOME/.vim/dein.vim/dein.toml'), {'lazy': 0})

" Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
