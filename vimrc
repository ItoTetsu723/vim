autocmd BufNewFile *.py :0s/^/#!\/usr\/bin\/env python3\r\r\rdef main() -> None:\r\r\rif __name__ == "__main__":\r    main()/ " templateを挿入(改行文字を挿入するために置換を使う)
autocmd BufNewFile *.py call search('def main()')
autocmd BufNewFile *.py normal $
autocmd ColorScheme torte highlight IncSearch cterm=NONE " 検索時のハイライト色を上書きする。$VIMRUNTIME/colors/torte.vimによってSearchはguiで黒地に赤だが、cterm(cui)ではcterm=reverse(赤地に黒) となっているため上書きする。colorschemeより先に指定する必要がある
autocmd ColorScheme torte highlight! link ColorColumn CursorLine
autocmd ColorScheme torte highlight! link NonText SpecialKey " NonText(eol, extends, precede)をSpecialKey(nbsp, space, tab)の色と揃える。highlightは既に定義済みのevents(NonTextなどの区分のこと)のcolorschemeを変更しないので、!をつけて強制的に上書きする
autocmd ColorScheme torte highlight Search cterm=NONE
autocmd FileType c setlocal shiftwidth=4
autocmd FileType c setlocal tabstop=4
colorscheme torte
filetype plugin indent on " 言語別に既定のインデントを設定する
" .py -> setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
" expandtab タブをスペースに変換
" shiftwidth=4 自動インデント時の桁数
" softtabstop=4 tab一回の入力で何桁インデントするかを指定する。noexpandtab時は、tabstop=8, softtabstop=4ならtab一回で4つのスペースを、二回で\tを挿入する(softtabstop の値の倍数がtabstop の値に一致する場合に、\t を優先的に使用する)
" tabstop=4 vim上で\tを表示する時の桁数
inoremap <silent> jj <ESC>
let g:user42 = 'tetito'
let g:mail42 = 'tetito@students.42tokyo.jp'
nnoremap <silent> k gk
nnoremap <silent> gk k
nnoremap <silent> j gj
nnoremap <silent> gj j
runtime! ftplugin/man.vim " :Man commandでマニュアルを表示できるようにする
if has('patch-9.1.1590')
  set autocomplete
endif
set clipboard=unnamed,unnamedplus
set colorcolumn=80 " n文字目にラインを表示する
set completeopt+=fuzzy " 入力補完のマッチングを拡張する(completeoptをcoptで検索できる)
set cursorline " 自分がいる行を強調
set foldmethod=indent " 折り畳みの基準
set hlsearch " 検索語を強調して表示
set ignorecase " 検索時に大文字と小文字を区別しない
set incsearch " 検索語を入力中、随時検索して最初のマッチに移動する
set laststatus=2 " 常にステータスライン(ファイル名など)を表示する
set list " 空白文字や行末を表示
set listchars=tab:>.,trail:_,eol:$ "listに使う文字の指定
set number " 行数の表示
set ruler " 現在位置を表示
set shortmess-=S " 検索時にヒット件数を表示する
set showcmd " 最下行に入力したコマンドを表示
set smartcase " 検索語に大文字が含まれる時だけ大文字と小文字を区別する(ignorecaseを上書き)
syntax enable "シンタックスハイライトを有効化する
