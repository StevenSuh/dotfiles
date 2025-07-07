export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

alias ls='exa -1 -s type'

alias cls="clear && printf '\e[3J'"
alias myip="ifconfig en0 | grep 'inet '"

# Flutter
export PATH="$PATH:/Users/$USER/workspace/pkgs/flutter/bin"

alias filesize='du -hcs '

eval "$(starship init zsh)"
