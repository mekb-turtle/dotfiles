<h2 align="center">
🚀 mekb's dot files (WIP)<br/><br/>
</h2>

#### [Hyprland](https://hyprland.org/) with [Catppuccin](https://github.com/catppuccin)

Usage:
- Clone repo with submodules
- Run `./install`
- Change configuration to your liking, e.g environment variables and monitor layout

Uses [dotbot](https://github.com/anishathalye/dotbot)

Packages to install:

- `hyprland` `waybar` `dunst` `kitty` `rofi` `swaylock-effects` `swaybg` `libnotify` `glib2`
- Screenshot util: `grim` `slurp` `wl-clipboard` `hyprpicker` `imagemagick` `jq` `tesseract` `zbar` https://github.com/mekb-turtle/foto
- Background stuff: `pipewire{,-alsa,-audio,-jack,-pulse}` `wireplumber` `xdg-desktop-portal{,-hyprland}`
- For power menu: https://github.com/mekb-turtle/do/ (add your user to the `do` group)
- Auto-start keepassxc: `keepassxc` `ssh-agent`

Command to install packages: `pacman -S hyprland waybar dunst kitty rofi swaylock-effects swaybg libnotify glib2 grim slurp wl-clipboard hyprpicker imagemagick jq tesseract zbar pipewire pipewire-alsa pipewire-audio pipewire-jack pipewire-pulse wireplumber xdg-desktop-portal xdg-desktop-portal-hyprland keepassxc ssh-agent`

Also see my [neovim config](https://github.com/mekb-turtle/nvim)
