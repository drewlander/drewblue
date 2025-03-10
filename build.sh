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
# install vscode
rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" |  tee /etc/yum.repos.d/vscode.repo > /dev/null
dnf check-update
dnf -y install code 
dnf config-manager -y addrepo --from-repofile=https://repository.mullvad.net/rpm/stable/mullvad.repo
dnf install -y mullvad-browser
dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf install -y @virtualization
dnf install -y @development-tools
dnf install -y tmux neovim emacs chromium zsh xiphos thunderbird libreoffice tailscale
dnf install -y distrobox  usbguard usbguard-notifier setroubleshoot setools fscrypt neovim pam-u2f flatpak
dnf install -y pam_yubico pamu2fcfg yubikey-manager  headsetcontrol gnome-text-editor evince 

#### Example for enabling a System Unit File

#flatpak install --system -y org.mozilla.firefox org.gnome.Loupe org.signal.Signal com.discordapp.Discord im.riot.Riot  org.telegram.desktop  org.libreoffice.LibreOffice  com.github.tchx84.Flatseal  com.mattjakeman.ExtensionManager 
#flatpak install --system -y com.usebottles.bottles  net.lutris.Lutris  io.github.dvlv.boxbuddyrs org.gnome.Evolution org.telegram.desktop org.videolan.VLC io.mpv.Mpv org.atheme.audacious org.gnome.Builder com.visualstudio.code 
#flatpak install --system -y org.xiphos.Xiphos org.mozilla.Thunderbird 
systemctl enable podman.socket
