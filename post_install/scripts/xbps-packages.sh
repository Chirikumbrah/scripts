#!/bin/bash

sudo xbps-install -Suy void-repo-multilib void-repo-multilib-nonfree void-repo-nonfree
sudo xbps-install -Suy
sudo xbps-install -Suy ffmpeg obs ffscreencast unrar tar p7zip p7zip-unrar lm_sensors i3lock-color mtools docker tree qt6ct qt5ct \
    lxqt-sudo bind-utils shellcheck cargo udevil jmtpfs ImageMagick usbutils Adapta abiword \
    skype libsecret glow ntfs-3g jq ueberzug gnupg taplo testdisk \
    pamixer kolourpaint perl-rename go feh nsxiv \
    android-file-transfer-linux neovim ctags libgcc-32bit gimp libstdc++-32bit \
    libdrm-32bit libglvnd-32bit mesa-dri-32bit cronie packer ark automake xkb-switch \
    base-devel android-tools binutils blueman bluez imlib2-devel \
    # audio
    alsa-lib alsa-lib-devel alsa-plugins alsa-tools alsa-plugins-pulseaudio \
    qjackctl pipewire alsa-pipewire alsa-utils \
    sysstat bluez-alsa breeze-cursors calligra-sheets trash-cli \
    # fonts
    font-fantasque-sans-ttf terminus-font font-material-design-icons-ttf ttf-material-icons \
    font-adobe-utopia-100dpi font-adobe-utopia-75dpi font-misc-misc terminus-font noto-fonts-ttf-extra noto-fonts-emoji \
    font-adobe-100dpi font-adobe-75dpi dejavu-fonts-ttf noto-fonts-cjk noto-fonts-ttf nerd-fonts \
    # other
    cmake xdg-utils xdg-user-dirs libqtxdg libcanberra clang lua-language-server \
    curl audacious audacious-plugins gtk+-devel gtk+3-devel net-tools network-manager-applet NetworkManager-openvpn \
    firefox chromium flameshot scrot python-devel python3-devel python3-pip \
    geany git gnome-keyring cairo-devel gtick gvfs-afc gvfs-mtp gvfs-smb uthash \
    # X11 dependencies
    libXtst-devel libXi-devel libX11-devel libXft-devel libXinerama-devel libXfixes-devel \
    htop kdeconnect keepassxc libev libev-devel meson ninja \
    libgnome-keyring lingot lvm2 SDL2_image libinput-gestures libenet make xcb-util-image-devel xcb-util-image \
    mdadm nano neofetch gstreamer1 libnuma xcb-util-renderutil-devel xcb-util-renderutil \
    papirus-icon-theme xcursor-themes LGOGDownloader clipit gparted picard qimgv telegram-desktop \
    tlp tlp-rdw qbittorrent udisks2 wget psutils wine wine-32bit wine-gecko mesa-vulkan-intel intel-video-accel wine-mono mono winetricks wmctrl xauth xbacklight \
    xdo xdotool xkill xorg intel-ucode xorg-input-drivers dmenu j4-dmenu-desktop \
    orage calcurse xorg-video-drivers xz fish-shell starship delta dbus-elogind dbus-elogind-libs dbus-x11 \
    zathura zathura-pdf-mupdf zathura-cb zathura-djvu zathura-ps sl exa tldr fd duf fzf bat \
    galculator geteltorito grc zoxide pycp flatpak
    # Wayland dependencies
    # xorg-server-xwayland Waybar foot wlroots-devel libinput-devel bemenu clipman swaylock swaybg ts