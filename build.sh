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
rpm-ostree remove firefox firefox-langpacks
dnf install -y @virtualization
dnf install -y @development-tools
dnf install -y tmux neovim emacs chromium zsh 
dnf install -y distrobox\ 
      usbguard\ 
      usbguard-notifier\ 
      setroubleshoot\ 
      setools\ 
      fscrypt\ 
      vim\ 
      pam-u2f\ 
      pam_yubico\ 
      pamu2fcfg\ 
      yubikey-manager\ 
      google-noto-fonts-all\ 
      headsetcontrol\ 
      gnome-text-editor\ 
      evince
flatpak install --system-y flathub org.mozilla.firefox \
        org.signal.Signal\ 
        com.discordapp.Discord\ 
        im.riot.Riot\ 
        org.telegram.desktop\ 
        org.libreoffice.LibreOffice\ 
        com.github.tchx84.Flatseal\ 
        com.mattjakeman.ExtensionManager\ 
        com.usebottles.bottles\ 
        net.lutris.Lutris\ 
        io.github.dvlv.boxbuddyrs\ 
        org.gnome.Evolution\ 
        org.videolan.VLC\ 
        io.mpv.Mpv\ 
        org.atheme.audacious\ 
        org.gnome.Builder\ 
        com.visualstudio.code\ 
        org.xiphos.Xiphos\ 
        org.mozilla.Thunderbird\ 
        org.strawberrymusicplayer.strawberry\ 
        org.mozilla.firefox
#### Example for enabling a System Unit File

systemctl enable podman.socket
