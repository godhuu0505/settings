" ##############################################################表示系##############################################################


" 編集中のファイル名を表示
set title

" コードの色分け
syntax on

" 行番号を表示
set number

" 現在の行を強調表示
" set cursorline

" 現在の列を強調表示（縦）
" set cursorcolumn

" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore

" インデントはスマートインデント
set smartindent

" ビープ音を可視化
set visualbell

" 括弧入力時の対応する括弧を表示
set showmatch

" ステータスラインを常に表示
set laststatus=2

" コマンドラインの補完
set wildmode=list:longest

" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-

" Tab文字を半角スペースにする
set expandtab

" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2

" 行頭でのTab文字の表示幅
set shiftwidth=2 

" 入力中のコマンドをステータスに表示す
set showcmd


" ##############################################################検索系##############################################################


" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase

" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch

" 検索時に最後まで行ったら最初に戻る
set wrapscan

" 検索語をハイライト表示
set hlsearch

" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>


" ##############################################################移動系##############################################################


" explolerを開く
nnoremap q :E<Enter>

" ctagジャンプの時に新規タブで開く
nnoremap <F3> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>

" ctagジャンプの時に定義元が複数あった場合は一覧表示
nnoremap <C-]> g<C-]>


" ##############################################################入力系##############################################################


" visualモード時に複数行をまとめてインデント
vnoremap > >gv
vnoremap < <gv

" insertモード時に閉じ括弧の補完
inoremap {<Enter> {}
inoremap [<Enter> []
inoremap (<Enter> ()

" insertモード時に行頭(^)と行末($)にカーソル移動
inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>^a

" normalモード時に行頭(^)と行末($)にカーソル移動
noremap <C-e> <Esc>$
noremap <C-a> <Esc>^

" insertモード時のカーソル移動
inoremap <c-h> <Left>
inoremap <c-j> <Down>
inoremap <c-k> <Up>
inoremap <c-l> <Right>

" ##############################################################その他##############################################################

"文字コードをUFT-8に設定
set fenc=utf-8

" バックアップファイルを作らない
set nobackup

" スワップファイルを作らない
set noswapfile

" 編集中のファイルが変更されたら自動で読み直す
set autoread

" バッファが編集中でもその他のファイルを開けるように
set hidden

" 入力中のコマンドをステータスに表示する
set showcmd

" クリップボードにコピーするオプション？
set clipboard=unnamed,autoselect
