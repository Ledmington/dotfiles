export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="amuse"

plugins=(
  git
  python
  virtualenv
)

source $ZSH/oh-my-zsh.sh

alias ll='ls -alh'

export LESS='-R'
