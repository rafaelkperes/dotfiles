#!/bin/sh

set -eux

cp .zshrc .zshenv \
    .zsh_plugins.txt .zsh_rebundle.sh \
    $HOME/

( cd $HOME && ./.zsh_rebundle.sh )