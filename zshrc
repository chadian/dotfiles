## ANTIGEN

source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle z
antigen bundle osx
antigen bundle npm
antigen bundle docker
antigen bundle docker-compose

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Tell antigen that you're done.
antigen apply

## ALIAS and CLI HELPERS

alias brr='for ref in $(git for-each-ref --sort=-committerdate --format="%(refname)" refs/heads/ ); do git log -n1 $ref --pretty=format:"%Cgreen%cr%Creset %C(yellow)%d%Creset %C(bold blue)<%an>%Creset%n" | cat ; done | awk '"'! a["'$0'"]++'"

## PATH

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

## ALIAS

alias st='open -a /Applications/Sublime\ Text.app'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## Source a zshrc local file for untracked machine-specific config/overrides
source ~/.zshrc.local
