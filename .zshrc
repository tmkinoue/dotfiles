# .zshrc

# Get the aliases and functions
pwd=`/usr/bin/dirname "${0}"`
if [ -f ${pwd}/.profile ]; then
    . ${pwd}/.profile
fi
if [ -f ${pwd}/aliases ]; then
    . ${pwd}/aliases
fi

# history setting
HISTSIZE=10000
SAVEHIST=100000
alias history='history -t "%F %T"'
# history setting end

# beep off
setopt nobeep

# cli comment out
setopt interactivecomments

# 保管機能とプロンプトの表示設定
# === 参考 ===
# - https://gist.github.com/d-kuro/352498c993c51831b25963be62074af
# - https://qiita.com/mikan3rd/items/d41a8ca26523f950ea9d

# git-promptの読み込み
source ~/.zsh/git-prompt.sh
#
## git-completionの読み込み
fpath=(~/.zsh $fpath)
#zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
#autoload -Uz compinit && compinit
#
## プロンプトのオプション表示設定
#GIT_PS1_SHOWDIRTYSTATE=true
#GIT_PS1_SHOWUNTRACKEDFILES=true
#GIT_PS1_SHOWSTASHSTATE=true
#GIT_PS1_SHOWUPSTREAM=auto
#
## プロンプトの表示設定(好きなようにカスタマイズ可)
setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f
\$ '

# 補完機能有効にする
autoload -U compinit
compinit -u
 
# 補完候補に色つける
autoload -U colors
colors
zstyle ':completion:*' list-colors "${LS_COLORS}"
 
# 単語の入力途中でもTab補完を有効化
setopt complete_in_word
# 補完候補をハイライト
zstyle ':completion:*:default' menu select=1
# キャッシュの利用による補完の高速化
zstyle ':completion::complete:*' use-cache true
# 大文字、小文字を区別せず補完する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完リストの表示間隔を狭くする
setopt list_packed
 
# コマンドの打ち間違いを指摘してくれる
setopt correct
SPROMPT="correct: $RED%R$DEFAULT -> $GREEN%r$DEFAULT ? [Yes/No/Abort/Edit] => "
#保管機能とプロンプトの表示設定 ここまで
