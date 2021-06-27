#!/bin/sh

#sudo dnf install NetworkManager-config-connectivity-fedora adwaita-gtk2-theme bluedevil breeze-icon-theme cagibi colord-kde cups-pk-helper dolphin firewall-config glibc-all-langpacks gnome-keyring-pam kcm_systemd kcolorchooser kde-gtk-config kde-partitionmanager kde-platform-plugin kde-print-manager kde-runtime kde-settings-pulseaudio kde-style-breeze kdegraphics-thumbnailers kdelibs kdeplasma-addons kdialog kdnssd kf5-akonadi-server kf5-akonadi-server-mysql kf5-baloo-file kf5-kipi-plugins kfind kgpg khotkeys kinfocenter kmenuedit konsole5 kscreen kscreenlocker ksshaskpass ksysguard kwalletmanager5 kwebkitpart kwin pam-kwallet phonon-backend-gstreamer phonon-qt5-backend-gstreamer pinentry-qt plasma-breeze plasma-desktop plasma-desktop-doc plasma-drkonqi plasma-nm plasma-nm-l2tp plasma-nm-openconnect plasma-nm-openswan plasma-nm-openvpn plasma-nm-pptp plasma-nm-vpnc plasma-pa plasma-pk-updates plasma-user-manager plasma-workspace plasma-workspace-geolocation polkit-kde qt5-qtbase-gui qt5-qtdeclarative sddm sddm-breeze sddm-kcm sni-qt xorg-x11-drv-libinput setroubleshoot system-config-users system-config-keyboard system-config-language @"Hardware Support" @base-x @Fonts @"Printing Support" @"Common NetworkManager Submodules"

sudo dnf groupinstall Development Tools
sudo dnf install snapd xcb-util-devel xcb-util-keysyms-dev automake autoconf cmake xcape brightnessctl polybar lm-sensors redshift tor bluez bluez-tools blueman dunst zsh z xclip xset libtool xev python3-devel

## apps
sudo dnf install thunderbird tor athura zathura-pdf-mupdf maim rofi thunar feh pandoc mpd ncmpcpp yad i3lock jupyter-notebook keepassxc qimgv dunst calibre

```
manual installs:
firefox, nvim, picom, ranger
```
##fonts
sudo dnf install google-droid-sans-mono-fonts unifont-fonts
