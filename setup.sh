#!/usr/bin/env bash

cur_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cfg_path="${HOME}/.config"
if [ ! -d "${cfg_path}/nvim" ] ; then
    echo "Linking neovim config directory ..."
    mkdir -p "$cfg_path"
    ln -s $cur_dir/nvim $cfg_path
fi

# Install vimplug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

