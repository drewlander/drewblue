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
dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf install -y @virtualization
dnf install -y @development-tools
dnf install -y tmux neovim emacs chromium zsh 
dnf install -y distrobox  usbguard usbguard-notifier setroubleshoot setools fscrypt neovim pam-u2f flatpack
dnf install -y pam_yubico pamu2fcfg yubikey-manager google-noto-fonts-all headsetcontrol gnome-text-editor evince firefox vlc mpv audacious audacious-plugins
dnf swap -y ffmpeg-free ffmpeg --allowerasing
dnf install -y intel-media-driver
flatpak remote-delete fedora
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
dnf swap -y mesa-va-drivers mesa-va-drivers-freeworld
dnf swap -y mesa-vdpau-drivers mesa-vdpau-drivers-freeworld
dnf install -y rpmfusion-free-release-tainted
dnf install -y libdvdcss
#### Example for enabling a System Unit File

systemctl enable podman.socket
