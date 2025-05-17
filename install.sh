#!/bin/bash

install_bins() {
    cp -r bin/ ~/
}

install_tmux() {
    cp .tmux.conf ~/
}


main() {
    install_bins
    install_tmux
}


main