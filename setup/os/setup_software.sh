#!/bin/bash

source "utils.sh"
source "os/utils.sh"

declare OS_ARCH="$(get_os_arch)"

update
upgrade

print_in_green "\n  ---\n\n"

# Tools for compiling/building software from source
install_package "Build Essential" "build-essential"

# GnuPG archive keys of the Debian archive
install_package "GnuPG archive keys" "debian-archive-keyring"

print_in_green "\n  ---\n\n"

install_package "cURL" "curl"
install_package "Git" "git"
install_package "GNOME Vim" "vim-gnome"
install_package "tmux" "tmux"
install_package "VirtualBox" "virtualbox"

print_in_green "\n  ---\n\n"
update
upgrade

print_in_green "\n  ---\n\n"
autoremove
