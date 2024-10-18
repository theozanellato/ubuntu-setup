export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-fzf-history-search)

source $ZSH/oh-my-zsh.sh

export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

# export EDITOR='nvim'
# export FZF_TMUX=1

export PATH="$PATH:/opt/nvim-linux64/bin"
# bindkey '^R' history-incremental-search-backward
eval "$(starship init zsh)"

alias ls='eza --all --all --git --icons --color=always --group-directories-first'

eval "$(zoxide init zsh)"
alias cd='z'
