[[ -f "$HOME/.profile" ]] && source $HOME/.profile

typeset -U PATH path
path=("$path[@]")
export PATH
