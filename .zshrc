
export ZSH="/usr/share/oh-my-zsh"
ZSH_THEME="jonathan"
plugins=(git)
source $ZSH/oh-my-zsh.sh
export EDITOR='vim'
eval "$(direnv hook zsh)"

alias ll='ls -la'
alias gud='git add package.json package-lock.json; git commit -m "fix: update dependencies"'
alias gudpr='gud; BRANCH=update-dependencies-`date +%Y%m%dT%H%M%S`; git checkout -b $BRANCH; git push origin $BRANCH; gh pr create -t "fix: update dependencies" -b "Update all dependencies"'

export PATH=$HOME/bin:$HOME/.local/bin:$PATH
export PATH=$HOME/go/bin:$PATH
export PATH=$HOME/dotfiles/bin:$PATH
