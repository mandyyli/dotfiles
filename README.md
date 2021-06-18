My dotfiles for a Fedora + BSPWM setup on my Thinkpad T440p

## Packages:
- `rofi`: Application launcher
- `zsh`: Shell
- `urxvt`: Terminal emulator
- `bspwm`: Window manager
- `sxhkd`: Hotkey daemon
- `dunst`: Notification daemon
- `mpd`: Music daemon
- `nvim`: Text editor
- `polybar`: Status bar
- `firefox`: Browser
- `zathura`: PDF reader
- `ranger`: File explorer


- `maim`: Screenshot tool
- `picom`: Compositor (ibhagwan's fork)
- `ncmpcpp`: music client
- `thunderbird`: Email client
- `keepassxc`: Password manager
- `vscodium`: Code editor
- `standard notes`: Encrypted notes application
- `joplin`: Note-taking application
- `tor`: Anonymous browser
- `signal`: Messenger
- `calibre`: Ebook manager

### Font packages:
- FiraCode Nerd Fonts
- Material Icons

## Setup
- Install Gruvbox theme and fonts
- Run install.sh
- Copy config files

## Configuring Nvim
Requires neovim nightly & Packer plugin manager

- Install Packer:
```
git clone https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 ```
- Copy `init.lua` and `lua` to `~/.config/nvim`
- Open `nvim` and run `:PackerInstall`
