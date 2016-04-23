#!/bin/bash

source "utils.sh"
source "os/utils.sh"

declare OS_ARCH="$(get_os_arch)"

update
upgrade

print_in_green "\n  ---\n\n"

# Tools for compiling/building software from source
install_package "Build Essential" "build-essential"
install_package "cMake" "cmake"

# GnuPG archive keys of the Debian archive
install_package "GnuPG archive keys" "debian-archive-keyring"

print_in_green "\n  ---\n\n"

install_package "Python Dev" "python-dev"
install_package "Python 3 Dev" "python3-dev"
install_package "cURL" "curl"
install_package "Git" "git"
install_package "GNOME Vim" "vim-gnome"
install_package "tmux" "tmux"
install_package "VirtualBox" "virtualbox"

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

print_in_green "\n  ---\n\n"
update
upgrade

print_in_green "\n  ---\n\n"
autoremove
