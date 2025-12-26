export PATH="/usr/local/bin:$PATH"
# alias
## ls
alias ll='ls -l'
alias la='ls -la'

## rm
### brew install rmtrash
### alias rm='rmtrash'
if type trash > /dev/null 2>&1; then
    alias rm='trash -F'
fi

## git reset
alias grh='git reset --hard'

## git log
alias gl='git log --oneline -n 50'

## git-prompt
source ~/.zsh/git-prompt.sh

## git-completion
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

## git-prompt
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

## git-prompt
setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f\$ '
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.local/bin/env"
