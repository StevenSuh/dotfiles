export ZSH="/Users/stevenesuh/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# My configs
# to make facebook infer work
export SDKROOT=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk

alias fr="git add -A && git commit -m 'ddd' && git rebase -i HEAD~2"

gitPush() {
  message=$@
  git add -A && git ci -m "$message" && git push --force
}
alias gp="gitPush"

gnp() {
  message=$@
  git add -A && git ci -m "$message"
}

# alias ls='colorls -1 --gs --light --sort-dirs'
alias ls='exa -1 -s type'

alias cls="clear && printf '\e[3J'"
alias myip="ifconfig en0 | grep 'inet '"

# export NVM_DIR=~/.nvm
# source ~/.nvm/nvm.sh

export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

alias python=python3
alias pip=pip3

# pure theme
# autoload -U promptinit; promptinit
# prompt pure

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/stevenesuh/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/stevenesuh/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/stevenesuh/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/stevenesuh/google-cloud-sdk/completion.zsh.inc'; fi

# Flutter
export PATH="$PATH:/Users/stevenesuh/workspace/pkgs/flutter/bin"
