" プラグイン
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'justmao945/vim-clang'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jacquesbh/vim-showmarks'
Plug 'w0ng/vim-hybrid'
call plug#end()

" タグ検索できるように
set tags=.tags

" カラーテーマ
set background=dark
colorscheme hybrid

" C-h C-l で先頭、末尾に
nnoremap <C-h> ^
nnoremap <C-l> $

" Ctrl + j と Ctrl + k で 段落の前後に移動
nnoremap <C-j> }
nnoremap <C-k> {

" クリップボードにヤンク
set clipboard+=unnamed
" BackSpaceで消せるように
set backspace=indent,eol,start

" Leader
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
for n in range(1, 9)
  execute 'nnoremap <Leader>'.n  ':<C-u>tabnext'.n.'<CR>'
endfor

" ターミナル関連
" 画面分割は下から
set splitbelow

" 構文ハイライト
syntax enable

" jjでESC
inoremap <silent> jj <ESC>

" 10進法
set nrformats=

" カーソルが一番下までいかないように
set scrolloff=2

" 行番号を表示
set number
" 現在の行を強調表示
set cursorline

" TABキーを押した際にタブ文字の代わりにスペースを入れる
set expandtab
set tabstop=4
set shiftwidth=4
" 改行時に前の行のインデントを継続する
set autoindent 
" 改行時に前の行の構文をチェックし次の行のインデントを増減する
set smartindent 

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
" ESCキー2度押しでハイライトの切り替え
nnoremap <ESC><ESC> :nohl<CR>
nnoremap <F3> :set hlsearch!<CR>

if has('vim_starting')
    " 挿入モード時に非点滅の縦棒タイプのカーソル
    let &t_SI .= "\e[6 q"
    " ノーマルモード時に非点滅のブロックタイプのカーソル
    let &t_EI .= "\e[2 q"
    " 置換モード時に非点滅の下線タイプのカーソル
    let &t_SR .= "\e[4 q"
endif

" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
set laststatus=2
