" プラグイン
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'simeji/winresizer'
Plug 'thinca/vim-quickrun'
Plug 'justmao945/vim-clang'
Plug 'aserebryakov/vim-todo-lists'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jacquesbh/vim-showmarks'
call plug#end()

" BackSpaceで消せるように
set backspace=indent,eol,start


" ctrl r でクイック実行
map <F5> :QuickRun<CR>

let g:VimTodoListsCustomKeyMapper = 'VimTodoListsCustomMappings'

function! VimTodoListsCustomMappings()
  nnoremap <Leader>d :VimTodoListsToggleItem<CR>
endfunction

" Leader
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>r :QuickRun -args "< test.txt"<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
for n in range(1, 9)
  execute 'nnoremap <Leader>'.n  ':<C-u>tabnext'.n.'<CR>'
endfor

" ステータスバーのカラー
let g:lightline = {'colorscheme': 'wombat'}

let g:quickrun_config={'*': {'split': '10'}}

" ターミナル関連
" 画面分割は下から
set splitbelow
" ターミナルサイズ
set termwinsize=7x0

" 構文ハイライト
syntax enable
set background=dark
colorscheme solarized

" テーマ設定
" set background=dark
" colorscheme solarized
" let g:solarized_termcolors=256

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

" 検索系
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


" The prefix key.
nnoremap [Tag] <Nop>
nmap t [Tag]
" Tab jump
" t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ
for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor

" tc 新しいタブを一番右に作る
map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tx タブを閉じる
map <silent> [Tag]x :tabclose<CR>
" tn 次のタブ
map <silent> [Tag]n :tabnext<CR>
" tp 前のタブ
map <silent> [Tag]p :tabprevious<CR>
