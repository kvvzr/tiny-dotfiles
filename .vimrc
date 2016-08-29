set title " タイトルを表示
set ruler " カーソル位置の表示
set number " 行番号の表示
set list listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%,eol:$ " 不可視文字の表示
set wrap " 折り返し
set expandtab tabstop=4 shiftwidth=4 " インデントの設定
set whichwrap=b,s,h,l,[,],<,>
set smartindent
set clipboard=unnamed,autoselect
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
set conceallevel=0 " めっちゃうざいConcealをオフ
set viminfo=
set encoding=utf-8
" set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8

let g:vim_json_syntax_conceal = 0

" バックスラッシュやクエスチョンを状況に合わせ自動的にエスケープ
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'

if has('win32') || has('win64')
    set shellslash " Windowsの区切り文字を変更
    set backspace=indent,eol,start " Cygwin環境で必要だった記憶
endif

" マウスカーソルを有効化
set mouse=a
if &term =~ "^screen"
    augroup MyAutoCmd
        autocmd VimLeave * :set mouse=
    augroup END

    set ttymouse=xterm2
endif

if has("gui_running")
    set imdisable
    set mousemodel=popup
    set nomousefocus
    set mousehide
endif

" 自然な移動
nnoremap j gj
xnoremap j gj
nnoremap k gk
xnoremap k gk

" jjでインサートモードを抜ける
inoremap <silent> jj <ESC>

" 検索のハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>
