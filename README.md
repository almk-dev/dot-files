# dot-files
Linux dot-files across all my machines

Emulator: Alacritty
Font: JetBrains Mono

## install-list
#### apt
- alacritty
- btop
- exfat-fuse
- flatpak
- git
- gnome-shell-extensions
- gnome-sushi
- gnome-tweaks
- python3-pip
- ruby-full
    - ruby-bundler
- simple-scan
- texlive-full
- tmux
- vim
- xclip

#### probationary
- openrgb
- kew
- mpv
- picard
- cmus

#### deb/ppa/src
- chrome
- code
- docker
- fish
- helix
- jellyfin
- rpi-imager
- syncthing
- zoom

### flatpak
- foliate
- fragments

### other
- d2
- fish
    - bass
- pnpm
    - node
- gem
    - bundler
    - jekyll
- obs
- latex/xelatex

## config-notes
- flatpak
    - flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


## cachyos
default
    fish
    remove
        alacritty
        console
arch
    discord
    ghostty
    google-chrome
    helix
    sbctl
    syncthing
    texlive
    ttf-jetbrains-mono
    xclip
    zellij
    visual-studio-code-bin
    kew


## to-do
update mlib -m to be agnostic to player
switch vim config to helix
consider gnome shell extensions
    look into some tiling extension

## steps
- Disable CAPSLOCK with `gnome-tweaks`
- Add keyboard shortcuts
    - `Super+E` Files
    - `Super+B` Browser
    - `Super+T` Terminal
- Add TorGuard VPN using WireGuard config
- Set Ghostty as default terminal
- Set up SMB connections to NAS
