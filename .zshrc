# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set up the prompt
autoload -Uz promptinit
autoload -Uz compinit
promptinit
compinit
setopt autocd

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=9999
SAVEHIST=9999
HISTFILE=~/.zsh_history

alias ll="ls -l"
alias klogs="kubectl get pods -o name | fzf --preview='kubectl logs {} | tail -30' --preview-window=up:99%"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias k="kubectl"
alias kg="kubectl get"
alias vim="nvim"
alias g="git"

export CLICOLOR=1


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fpath=(~/.zsh/completion $fpath)
# source <(kubectl completion zsh)
# complete -F __start_kubectl k


export PYTHONPATH=~/Research/Kube_Gang_Scheduling
export FZF_DEFAULT_OPTS="-m --bind ctrl-s:select-all,ctrl-d:deselect-all,ctrl-t:toggle-all"


# ZPlug Plugins
source ~/.zplug/init.zsh

zplug "zsh-users/zsh-autosuggestions"
zplug "zdharma/fast-syntax-highlighting"
zplug "zsh-users/zsh-completions"
zplug romkatv/powerlevel10k, as:theme, depth:1

# Install if not installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
    echo
fi
export ZSH_AUTOSUGGEST_MANUAL_REBIND=1 # Speed up autosuggestions
zplug load

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


