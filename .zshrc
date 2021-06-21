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

