# Fedora

sudo dnf install:
- google-chrome (Download rpm manually)
- dropbox (Download .rpm manually)
- vim # reconfig in /etc/vimrc
- git

install package managers:
- rvm
- npm
- pip

## fonts
install source code pro:
- sudo dnf install adobe-source-code-pro-fonts

## i3wm
- sudo dnf install
  - i3
  - i3lock
  - i3status
  - ranger
  - xbacklight
- sudo pip install
  - py3stats
- mv configs/i3/config ~/
- mv configs/.Xresources ~/

## gnome
- install deja-dup # gnome backup tool
- install Gnome-tweak-tool
- install gnome-extensions
  - gnome-shell-extension-caffeine
  - nohotcorner
    topicons
- font rendering for chrome in gnome
  - add RPM Fusion Repo
  - install freetype-freeworld
    - sudo dnf install freetype-freeworl only if you need itd
  - tweak font rendering fron gnome-tweak-tool
    - Hinting = None
    - Antialiasing = Rgba
  - add .fonts.conf to home folder:
    - ~/.fonts.conf
- path for gnome folder icons
  - /usr/share/icons/Adwaita/32x32/places


## android SDK
install require package:
  - sudo dnf install libstdc++.i686
  - sudo dnf install java-devel
