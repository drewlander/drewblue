set -eoux pipefail

rpm-ostree remove firefox firefox-langpacks

rpm-ostree install micro \
      starship\ 
      emacs\ 
      hardened-chromium\ 
      hardened-chromium-subresource-filter\ 
      distrobox\ 
      virt-manager \ 
      libvirt\ 
      bubblejail\ 
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

flatpak remote-add --system flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install --system-y flathub org.mozilla.firefox \
        org.gnome.Loupe\ 
        org.signal.Signal\ 
        com.discordapp.Discord\ 
        im.riot.Riot\ 
        org.telegram.desktop\ 
        org.libreoffice.LibreOffice\ 
        com.github.tchx84.Flatseal\ 
        com.mattjakeman.ExtensionManager\ 
        com.usebottles.bottles\ 
        net.lutris.Lutris\ 
        com.github.tchx84.Flatseal\ 
        net.lutris.Lutris\ 
        com.usebottles.bottles\ 
        io.github.dvlv.boxbuddyrs\ 
        org.gnome.Evolution\ 
        org.telegram.desktop\ 
        org.videolan.VLC\ 
        io.mpv.Mpv\ 
        org.atheme.audacious\ 
        com.github.tchx84.Flatseal\ 
        org.gnome.Builder\ 
        com.visualstudio.code\ 
        org.xiphos.Xiphos\ 
        org.mozilla.Thunderbird\ 
        org.strawberrymusicplayer.strawberry\ 
        net.mullvad.MullvadBrowser\ 
        org.kde.okular



