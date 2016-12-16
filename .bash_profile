# .bash_profile

# Get the aliases and functions
if [ "$(uname)" = 'Darwin' ]; then
    # Mac
    #export LSCOLORS=xbfxcxdxbxegedabagacad
    alias ls='ls -G'
    alias ll='ls -laG'
else
    eval `dircolors ~/.colorrc`
    alias ls='ls --color=auto'
    alias ll='ls -alF --color=auto'
    alias ps='ps --sort=start_time'
fi

alias grep='grep --color'

HISTSIZE=50000
HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S '

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
