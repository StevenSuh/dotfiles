if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
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

# pure theme
# autoload -U promptinit; promptinit
# prompt pure

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/$USER/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/$USER/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/$USER/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/$USER/google-cloud-sdk/completion.zsh.inc'; fi

# Flutter
export PATH="$PATH:/Users/$USER/workspace/pkgs/flutter/bin"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias filesize='du -hcs '

