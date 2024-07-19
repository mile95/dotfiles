# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/homebrew/bin:/opt/homebrew/sbin"
export PATH="/opt/homebrew/lib/python3.11/site-packages:$PATH" 


ZSH_THEME="robbyrussell"

plugins=(autojump git zsh-fzf-history-search)

source $ZSH/oh-my-zsh.sh

export OBSIDIAN_VAULT_PATH="~/Documents/bank"
export OBSIDIAN_DAILY_NOTE_BASE_PATH="/recurring/daily"
export OBSIDIAN_DAILY_NOTE_TEMPLATE_PATH="/templates/daily"

alias nv=nvim


