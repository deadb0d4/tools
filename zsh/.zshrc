EDITOR=vim
PROMPT='%n@%m %3~%(!.#.$)%(?.. [%?]) '

autoload -U colors && colors

PS1="%{$fg[red]%}%~ ➜ %{$reset_color%}%"

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt append_history           # allow multiple sessions to append to one history
setopt bang_hist                # treat ! special during command expansion
setopt extended_history         # Write history in :start:elasped;command format
setopt hist_expire_dups_first   # expire duplicates first when trimming history
setopt hist_find_no_dups        # When searching history, don't repeat
setopt hist_ignore_dups         # ignore duplicate entries of previous events
setopt hist_ignore_space        # prefix command with a space to skip it's recording
setopt hist_reduce_blanks       # Remove extra blanks from each command added to history
setopt hist_verify              # Don't execute immediately upon history expansion
setopt inc_append_history       # Write to history file immediately, not when shell quits
setopt share_history            # Share history among all sessions

# Tab completion
autoload -Uz compinit && compinit
setopt complete_in_word         # cd /ho/sco/tm<TAB> expands to /home/scott/tmp
setopt auto_menu                # show completion menu on succesive tab presses
# setopt autocd                   # cd to a folder just by typing it's name

# Safe removal
alias rm='rm -i'

export GREP_COLORS="mt=33"
export GREP_OPTIONS='--color=auto'

export GOPATH=$HOME/workspace/gocode

# Node
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

export LDFLAGS="-L/usr/local/opt/icu4c/lib"
export CPPFLAGS="-I/usr/local/opt/icu4c/include"

autoload -U +X bashcompinit && bashcompinit
source /usr/local/etc/bash_completion.d

# Python 2.7 is deprecated
alias python=python3

python3 ~/day_count.py
