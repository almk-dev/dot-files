# dot-files
Linux dot-files (and more) across all my machines

Currently, all my machines are running **Ubuntu 18.10**, with **GNOME**. I use **gnome-tweaks** and
**arc-theme** for the visual flavor, with **Arc-Darker** as the application theme variant. I also
use the **AlternateTab** extension to change alt-tab behavior (**gnome-shell-extensions** required).
Almost everything else is left as is.

I use the pre-installed **gnome-terminal**, with white on black text and the built-in **XTerm**
scheme for its color palette, with zero transparency. The monospace font in the screenshots is
**UbuntuMono**, with the [**NerdFonts**](https://github.com/ryanoasis/nerd-fonts) patched glyphs.
The proportional font used is the default **UbuntuRegular**. The background in the screenshot is
Justin Maller's [**Ghosts II**](http://www.facets.la/2013/200/).

### GNOME desktop with `gnome-tweaks` and `arc-theme`
![GNOME desktop with `gnome-tweaks` and `arc-theme`](https://i.imgur.com/cKQ5mBN.jpg)

### Landscape `tmux` setup using `tland`
![Landscape `tmux` setup using `tland` (fullscreen)](https://i.imgur.com/vXRE27A.jpg)

### vim setup/vimrc

#### command-line
`arc-theme`,`cmus`,`git`,`gnome-shell-extensions`\
`htop`,`mpv`,`tmux`,`vim`,`vis`,`xclip`,`youtube-dl`,`zsh`
#### other
`discord`,`gnome-tweaks`,`google-chrome`,`picard`,`qbittorrent`,`syncthing`
#### pending
`weechat`,`cowsay`,`screenfetch`,`unison`/`samba`\
`runtimes`: `python`, `pip`, `build-essential`, `make`, `automake`, `gcc`, `java`
#### pending-2
`android-file-transfer`,`gcc`,`gimp`,`latex`,`python`,`spotify`,`textual`,`vlc`\
`weechat`,`cowsay`,`screenfetch`,`unison`/`samba`\
`runtimes`: `python`,`pip`,`build-essential`,`make`,`automake`,`gcc`,`java`

## tracking
#### fixed-width-font
`ubuntu-mono-nerd`
#### vim-colors
`gruvbox`,`hybrid`
#### vim-plugins
`airline`,`airline-themes`,`devicons`,`fugitive`,`gitgutter`\
`nerdtree`,`nerdtree-git-plugin`,`pathogen`,`supertab`,`tmuxline`
#### zsh-plugins
`oh-my-zsh`

DUMP
=====
install-list
	history.log:Commandline: apt install chrome-gnome-shell
	history.log:Commandline: apt install qbittorrent
	history.log:Commandline: apt install cmus
	history.log:Commandline: apt install gnome-tweaks
	history.log:Commandline: apt install htop
	history.log:Commandline: apt install libfftw3-dev libncursesw5-dev cmake libpulse-dev
	history.log:Commandline: apt install mpv
	history.log:Commandline: apt install python3-pip
	history.log:Commandline: apt install transmission
	history.log:Commandline: apt install xclip
	history.log:Commandline: apt install zsh git vim tmux
	history.log:Commandline: apt install exfat-fuse exfat-utils
	history.log.6.gz:Commandline: apt install ruby-dev

remove-list
	history.log:Commandline: apt purge firefox firefox-locale-en
	history.log:Commandline: apt purge gnome-shell-extension-desktop-icons gnome-shell-extension-ubuntu-dock
	history.log:Commandline: apt purge youtube-dl
	history.log:Commandline: apt purge transmission

gsettings
	gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 25
	gsettings set org.gnome.desktop.peripherals.keyboard delay 500
	gsettings set org.gnome.desktop.interface cursor-blink-time 500
	gsettings set org.gnome.desktop.peripherals.mouse speed 0.0
	gsettings set org.gnome.desktop.peripherals.mouse accel-profile flat

apple-cmd-opt-swap
	echo options hid_apple swap_opt_cmd=1 | sudo tee -a /etc/modprobe.d/hid_apple.conf
	sudo update-initramfs -u -k all
	sudo reboot

disable-boot-chime
	nvram SystemAudioVolume=%00
