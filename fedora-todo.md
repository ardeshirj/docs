# Fedora

## General
Download & install following rpms manually
- Google Chrome
- Atom
- Dropbox

sudo dnf install
- vim # reconfig in /etc/vimrc
- git

## Install package managers:
- rvm
- npm
- pip

## Fonts
Install source code pro
```shell
sudo dnf install adobe-source-code-pro-fonts
```

## i3wm
```shell
# Packages for i3
sudo dnf install
  i3
  i3lock
  i3status
  ranger
  xbacklight

# i3 python stat bar
sudo pip install py3stats

# Copy over the config files from dot-files repo
mv i3/config ~/
mv .Xresources ~/
```

## Gnome
- Install deja-dup # gnome backup tool
- Install Gnome-tweak-tool
- Install gnome-extensions
  - gnome-shell-extension-caffeine
  - nohotcorner
  - topicons

- Font rendering for chrome in gnome
  - Add RPM Fusion Repo
  - Tweak font rendering fron gnome-tweak-tool
    - Hinting = None
    - Antialiasing = Rgba
  - Add .fonts.conf to home dir

- Path for gnome folder icons
  - /usr/share/icons/Adwaita/32x32/places


## Android-SDK
```shell
# Install require packages
  sudo dnf install libstdc++.i686
  sudo dnf install java-devel
```
