HOSTNAME="$(cat /etc/hostname)"

ZSH="$HOME/dotfiles/oh-my-zsh"
ZSH_CUSTOM="$HOME/dotfiles/custom"
ZSH_THEME="pete"

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

setopt auto_cd
setopt auto_pushd
autoload -U compinit && compinit

plugins=(fasd heroku autojump osx gem rake rails3 ruby git)

source $ZSH/oh-my-zsh.sh

export SHELL='/bin/zsh'
export TERM='xterm-256color'

export PATH=/usr/local/sbin:${PATH}
export PATH=/usr/local/bin:${PATH}
export PATH=${HOME}/bin:${PATH}

export HISTCONTROL=ignoredups
export HISTSIZE=10000
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

export GREP_OPTIONS='--color=auto'
export EDITOR='vim'
export CLICOLOR=1

# heroku
export PATH="/usr/local/heroku/bin:$PATH"

# locale
export LESSCHARSET=utf-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# load up tmux
#if [ "$TMUX" = "" ]; then tmux; fi

# secrets
[ -f ~/.zshrc.local ] && source ${HOME}/.zshrc.local

# specific hostnames
if [[ -a ~/.${HOSTNAME}_zshrc ]]; then
 source ~/.${HOSTNAME}_zshrc
fi
