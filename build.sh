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
dnf install -y tmux neovim emacs
#### Example for enabling a System Unit File
curl --retry 3 -Lo /etc/yum.repos.d/hardened-chromium.repo \
	https://copr.fedorainfracloud.org/coprs/secureblue/hardened-chromium/repo/fedora-"${FEDORA_MAJOR_VERSION}"/secureblue-hardened-chromium-fedora-"${FEDORA_MAJOR_VERSION}".repo
curl --retry 3 -Lo  /etc/yum.repos.d/bubblejail.repo \
	https://copr.fedorainfracloud.org/coprs/secureblue/bubblejail/repo/fedora-"${FEDORA_MAJOR_VERSION}"/secureblue-bubblejail-fedora-"${FEDORA_MAJOR_VERSION}".repo
rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm


systemctl enable podman.socket
