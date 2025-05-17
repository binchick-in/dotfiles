#!/bin/bash

install_bins() {
    cp -r bin/ ~/
    echo "Installed: ~/bin"
}

install_tmux() {
    cp .tmux.conf ~/
    echo "Installed: ~/.tmux.conf"
}


ensure_directories() {
    for dir in repos worktrees playground inbound; do
        if [ ! -d ~/"$dir" ]; then
            mkdir -p ~/"$dir"
            echo "Created directory: ~/$dir"
        else
            echo "Directory already exists: ~/$dir"
        fi
    done
}

main() {
    ensure_directories
    install_bins
    install_tmux
}

main