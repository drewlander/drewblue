set -eoux pipefail

rpm-ostree remove firefox firefox-langpacks

rpm-ostree install micro \
      emacs\ 
      distrobox\ 
      virt-manager \ 
      libvirt\ 
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
      qemu\ 
      qemu-kvm\
      org.kde.amarok

flatpak remote-add --system flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install --system-y flathub org.mozilla.firefox \
        org.signal.Signal\ 
        com.discordapp.Discord\ 
        im.riot.Riot\ 
        org.telegram.desktop\ 
        org.libreoffice.LibreOffice\ 
        com.github.tchx84.Flatseal\ 
        com.usebottles.bottles\ 
        net.lutris.Lutris\ 
        com.usebottles.bottles\ 
        io.github.dvlv.boxbuddyrs\ 
        org.telegram.desktop\ 
        org.videolan.VLC\ 
        io.mpv.Mpv\ 
        org.atheme.audacious\ 
        com.visualstudio.code\ 
        org.xiphos.Xiphos\ 
        org.mozilla.Thunderbird\ 
        net.mullvad.MullvadBrowser\ 
        org.kde.okular



