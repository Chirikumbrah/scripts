#!/bin/bash

# Adding repositories
sudo xbps-install -Sy void-repo-multilib void-repo-multilib-nonfree void-repo-nonfree

# Changing mirrors
sudo mkdir -p /etc/xbps.d
sudo cp /usr/share/xbps.d/*-repository-*.conf /etc/xbps.d/
sudo sed -i 's|https://alpha.de.repo.voidlinux.org|<repository>|g' /etc/xbps.d/*-repository-*.conf
sudo xbps-install -S

sudo xbps-install -Suy lm_sensors i3lock-color mtools docker tree \
    lxqt-sudo bind-utils shellcheck cargo udevil usbutils Adapta \
    skype libsecret glow ntfs-3g jq ueberzug gnupg taplo testdisk \
    kolourpaint perl-rename go \
    ctags libgcc-32bit gimp libstdc++-32bit \
    libdrm-32bit libglvnd-32bit cronie packer ark automake xkb-switch \
    base-devel binutils imlib2-devel \
    # base
    git wget curl ngetty \
# network
    net-tools network-manager-applet NetworkManager-openvpn \
# qt dependencies
    qt6ct qt5ct qt5-devel libheic-devel \
# xdg packages
    xdg-utils xdg-user-dirs \
    xdg-desktop-portal-gtk \
# drivers
    intel-video-accel intel-ucode \
    xorg-video-drivers xorg-input-drivers \
    mesa-vulkan-intel mesa-dri-32bit \
    libinput-devel libinput-gestures \
# archives
    unrar tar p7zip p7zip-unrar \
# android
    android-file-transfer-linux android-tools jmtpfs \
# bluetooth
    blueman bluez bluez-alsa libspa-bluetooth \
# text editors
    neovim helix \
# documents
    libreoffice zathura zathura-pdf-mupdf zathura-cb zathura-djvu zathura-ps \
    nextcloud-client \
# web
    firefox chromium qbittorrent \
# pictures
    ImageMagick qimgv feh nsxiv \
# video
    mpv obs \
# audio
    alsa-pipewire pipewire pipewire-devel rtkit qjackctl libjack-pipewire wireplumber wireplumber-devel gstreamer1-pipewire \
# fonts
    font-fantasque-sans-ttf terminus-font font-material-design-icons-ttf ttf-material-icons \
    font-adobe-utopia-100dpi font-adobe-utopia-75dpi font-misc-misc terminus-font noto-fonts-ttf-extra noto-fonts-emoji \
    font-adobe-100dpi font-adobe-75dpi dejavu-fonts-ttf noto-fonts-cjk noto-fonts-ttf nerd-fonts \
# themes
    papirus-icon-theme breeze-cursors xcursor-themes \
# X11 dependencies
    libXtst-devel libXi-devel libX11-devel libXft-devel libXinerama-devel libXfixes-devel \
# python
    python-devel python3-devel python3-pip \
# wine
    wine wine-32bit wine-gecko wine-mono mono winetricks \
# other
    sysstat trash-cli \
    cmake libqtxdg libcanberra clang lua-language-server \
    flameshot audacious audacious-plugins gtk+-devel gtk+3-devel \
    gnome-keyring cairo-devel gtick gvfs-afc gvfs-mtp gvfs-smb uthash \
    htop kdeconnect keepassxc libev libev-devel meson ninja \
    libgnome-keyring lingot lvm2 SDL2_image libenet make xcb-util-image-devel xcb-util-image \
    mdadm neofetch gstreamer1 libnuma xcb-util-renderutil-devel xcb-util-renderutil \
    LGOGDownloader clipit gparted picard telegram-desktop \
    tlp tlp-rdw udisks2 psutils wmctrl xauth xbacklight \
    xdo xdotool xkill xorg dmenu j4-dmenu-desktop \
    orage calcurse xz fish-shell starship delta dbus-elogind dbus-elogind-libs dbus-x11 \
    sl exa tldr fd duf fzf bat \
    galculator geteltorito grc zoxide pycp flatpak
# Wayland dependencies
    # xorg-server-xwayland Waybar foot wlroots-devel bemenu swaylock swaybg ts \
    # fmt-devel spdlog gtkmm-devel libdbusmenu-gtk3-devel jsoncpp-devel \
    # clipman wl-clipboard wlsunset 