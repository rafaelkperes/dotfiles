# Based on https://gist.github.com/LukeSmithxyz/e62f26e55ea8b0ed41a65912fbebbe52

autoload promptinit

setopt histignorealldups sharehistory nomatch
unsetopt appendhistory autocd beep extendedglob notify

# vim keys
bindkey -v

# Enable colors and change prompt:
autoload -U colors && colors
# prompt walters
PROMPT="%B%{$fg[magenta]%}%1~ %{$fg[green]%}$%{$reset_color%}%b "
RPROMPT='%D{%H:%M:%S} %B[%F{yellow}%?%f]%b'

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Basic auto/tab complete:
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -u
_comp_options+=(globdots)		# Include hidden files.

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

#zsh-history-substring-search key bindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

source ~/.zsh_plugins.sh

# aliases
source ~/.config/aliasrc