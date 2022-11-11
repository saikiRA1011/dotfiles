" PLUGIN
call plug#begin('~/.config/nvim/plugged')
	Plug 'EdenEast/nightfox.nvim'
	Plug 'tomasiser/vim-code-dark'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme codedark

" === vim-airline ===
let g:airline#extensions#tabline#enabled = 1 " タブラインを表示
" ステータスラインのレイアウト変更
let g:airline#extensions#default#layout = [ 
  \ [ 'a', 'b', 'c' ],
  \ [ 'x', 'y', 'z' ]
  \ ]
let g:airline#extensions#tabline#fnamemod = ':t' " タブにファイル名のみを表示(ディレクトリは隠す)
let g:airline_theme = 'codedark' " カラーテーマを変更
" let g:airline#extensions#tabline#buffer_idx_mode = 1 " バッファ番号を表示
" ===================
set nocompatible " Vi互換をなくす(Vimの機能が有効になる)
set confirm " 保存せずにquitしようとした際に保存確認をする
set belloff=all " ビープ音をなくす
set backspace=indent,eol,start " バックスペースで消去できる文字を追加
set splitbelow " splitによる画面分割を下側におこなう
set splitright " splitによる画面分割を右側におこなう
set tabstop=4 " tabを4文字幅に設定
set shiftwidth=4 " インデントを4文字幅に設定
set autoread " 外部でファイルの内容が変更された際に読み込み直す
set cmdheight=2 " コマンドラインの表示幅(0ならコマンド入力時のみ表示)
set updatetime=300 " [ms] この時間入力がなければ記号を更新する
set autoindent " 改行時にインデントを維持
set clipboard=unnamedplus " クリップボードと連帯(できてなくね？)

" Status Lise Settings
set statusline=%F " Show file name
set statusline+=%m " Show modification
set statusline+=%r " Show if readonly
set statusline+=%h " Show if help
set statusline+=%w " Show if preview
set statusline+=:%l " Show line number
set statusline+=%= " align right after this
set laststatus=2 " Show status line (0:never, 1:two or more windows, 2:always)

" set list " 不可視文字を表示
" set listchars=tab:>_ " tabの表示を変更


" Move between windows
nnoremap <Return><Return> <c-w><c-w>
cnoreabbrev vs vsplit

set encoding=utf-8
set number " 列番号を表示

" tabline
set showtabline=2 " タブを常に表示(0: 常に非表示, 1: タブが2個以上ある時表示、2: タブを常に表示)
set guioptions-=e " gVimでもテキストベースのタブを利用する

" 色
set background=dark " 背景色の設定(背景色が変わるわけではない！)

" 検索系
set hlsearch " 文字列検索時に該当する部分をハイライト
set ignorecase " 検索パターンで大文字小文字を区別しない
set incsearch " 検索コマンドを打ち込んでいる間にも打ち込んだ文字列を逐次検索する

