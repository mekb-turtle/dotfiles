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

- `hyprland` `waybar` `dunst` `kitty` `rofi` `swaybg` `libnotify` `glib2` `jq`
- Screenshot util: `grim` `slurp` `wl-clipboard` `hyprpicker` `imagemagick` `jq` `tesseract` `zbar` https://github.com/mekb-turtle/foto
- Background stuff: `pipewire{,-alsa,-audio,-jack,-pulse}` `wireplumber` `xdg-desktop-portal{,-hyprland}`
- For power menu: https://github.com/mekb-turtle/do/ (add your user to the `do` group)
- Auto-start keepassxc: `keepassxc` `openssh` (ssh-agent)
- Fonts: `ttf-fira-code` `ttf-fira-mono` `ttf-nerd-fonts-symbols` `ttf-nerd-fonts-symbols-mono` `ttf-twemoji` `ttf-ubuntu-font-family`
- Theme: `catppuccin-gtk-theme-mocha` `papirus-folders-catppuccin-git` `catppuccin-cursors-mocha`
- Lock screen: `hyprlock` or `swaylock-effects` (configure in `scripts/lock`)

If you are using NVIDIA, apply the following patch to `hyprlock-git` instead of repo package.<details><summary>Show patch</summary>
```shell
prepare() {
    cd "${srcdir}/${_pkgname}"
    sed -i -e "s/5000/16/g" src/core/hyprlock.cpp
}
```
</details>

If you are not using NVIDIA, remove the line `source=conf/env-nvidia.conf` in `hyprland.conf`.

You will also need to adjust other config settings such as the monitor layout.

Command to install packages: `paru -S hyprland waybar dunst kitty rofi swaylock-effects hyprlock swaybg libnotify glib2 grim slurp wl-clipboard hyprpicker imagemagick jq tesseract tesseract-data-eng zbar pipewire pipewire-alsa pipewire-audio pipewire-jack pipewire-pulse wireplumber xdg-desktop-portal xdg-desktop-portal-hyprland keepassxc openssh ttf-fira-code ttf-fira-mono ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono ttf-twemoji ttf-ubuntu-font-family catppuccin-gtk-theme-mocha papirus-folders-catppuccin-git catppuccin-cursors-mocha`

Also see my [neovim config](https://github.com/mekb-turtle/nvim)
