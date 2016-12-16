"#####vim setting file from my git repository start#######

"#####文字コード#######
set encoding=UTF-8 "文字コードをUTF-8にする
set fileencoding=UTF-8 "文字コードをUTF-8にする
set termencoding=UTF-8 "文字コードをUTF-8にする

"#####表示設定#####
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=4 "インデントをスペース4つ分に設定
set shiftwidth=4
set softtabstop=4
set smartindent "オートインデント
set expandtab

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
set hlsearch "検索結果のハイライト
set backspace=indent,eol,start

filetype on
filetype indent on
"filetype plugin on
autocmd BufNewFile,BufRead *.tpl :set filetype=html

"#####vim setting file from my git repository end#######
