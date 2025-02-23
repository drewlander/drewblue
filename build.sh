#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
#rpm-ostree install screen virt-manager

# this would install a package from rpmfusion
# rpm-ostree install vlc
dnf install -y tmux neovim
#### Example for enabling a System Unit File
#build_files/base_install.sh
systemctl enable podman.socket
