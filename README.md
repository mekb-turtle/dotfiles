<h2 align="center">
🚀 mekb's dot files<br/><br/>
</h2>

#### [Hyprland](https://hyprland.org/) with [Catppuccin](https://github.com/catppuccin)

##### Disclaimer: These are my personal dotfiles and are not intended to be used by others. They are provided as-is and may not work on your system. If you really want to use these, you will need to edit many files such as monitor config, you can create a personal fork and sync changes with git merge. Use at your own risk.

Usage:
- Clone repo with submodules
- Run `./install`
- Change configuration to your liking, e.g environment variables and monitor layout

Uses [dotbot](https://github.com/anishathalye/dotbot)

Packages to install:

- `hyprland` `waybar` `dunst` `kitty` `hyprpaper` `libnotify` `glib2` `jq` `swayosd-git` `cliphist` `brightnessctl`
- Screenshot util: `grim` `slurp` `wl-clipboard` `hyprpicker` `imagemagick` `jq` `tesseract` `zbar` https://github.com/mekb-turtle/foto
- Background stuff: `pipewire{,-alsa,-audio,-jack,-pulse}` `wireplumber` `xdg-desktop-portal{,-hyprland}`
- For power menu: https://github.com/mekb-turtle/do/ (add your user to the `do` group)
  - This tool is used to run power commands as root without password
- Auto-start keepassxc: `keepassxc` `openssh` (ssh-agent)
- Fonts: `ttf-fira-code` `ttf-fira-mono` `ttf-nerd-fonts-symbols` `ttf-nerd-fonts-symbols-mono` `ttf-twemoji` `ttf-ubuntu-font-family`
- Theme: `colloid-catppuccin-gtk-theme-git` `papirus-folders-catppuccin-git` `catppuccin-cursors-mocha` `qt5ct` `qt6ct` `kvantum`
- Lock screen: `hyprlock`, `hypridle`, and `elogind`
- Additional applications: `nemo` `mpv` `feh` `firefox` `gimp` `krita`
- [`rofi-wayland`](https://github.com/lbonn/rofi) (wofi has lacking features)

If you are not using NVIDIA, remove the line `source=conf/env-nvidia.conf` in `hyprland.conf`.

You will also need to adjust other config settings such as the monitor layout.

Command to install packages: `paru -S hyprland waybar dunst kitty hyprlock hyprpaper libnotify glib2 grim slurp wl-clipboard hyprpicker imagemagick jq tesseract tesseract-data-eng zbar pipewire pipewire-alsa pipewire-audio pipewire-jack pipewire-pulse wireplumber xdg-desktop-portal xdg-desktop-portal-hyprland keepassxc openssh ttf-fira-code ttf-fira-mono ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono ttf-twemoji ttf-ubuntu-font-family colloid-catppuccin-gtk-theme-git papirus-folders-catppuccin-git catppuccin-cursors-mocha qt5ct qt6ct kvantum swayosd-git cliphist nemo mpv feh firefox gimp krita brightnessctl hypridle elogind rofi-wayland`,
then run `sudo papirus-folders -C cat-mocha-pink`

Also see my [neovim config](https://github.com/mekb-turtle/nvim)
