# .bash_profile

# Get the aliases and functions
pwd=`/usr/bin/dirname "${0}"`
if [ -f ${pwd}/.profile ]; then
    . ${pwd}/.profile
fi
if [ -f ${pwd}/aliases ]; then
    . ${pwd}/aliases
fi

if [ "$(uname)" = 'Darwin' ]; then
    # git command support
    if [ -f /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash ]; then
        source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
    fi
fi

# hitsoty
HISTSIZE=10000
HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S '
