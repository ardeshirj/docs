# Texlive
"Easy way to get up and running with the TeX document production system."

## Setup
```shell
wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar xvf install-tl-unx.tar.gz
cd install-tl-*
sudo ./install # Only if you want to install it in a directory that need root permission
# Use the actions options to navigate and configure you installation

# Once the installation is complete you may want to add texlive to your path
vim .bashrc
export PATH=$PATH:[the-path-you-configured]/bin/x86_64-linux
```

## tlmgr - Texlive Package Manager
```shell
sudo tlmgr install [the-pkg-name] # Install package
sudo tlmgr update --all # Update all text packages
```
