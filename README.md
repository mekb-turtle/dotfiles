<h2 align="center">
🚀 mekb's dot files<br/><br/>
</h2>

#### [Hyprland](https://hyprland.org/) with [Catppuccin](https://github.com/catppuccin). Uses [dotbot](https://github.com/anishathalye/dotbot).

> [!IMPORTANT]
> These are my personal dotfiles and are not intended to be used by others. They are provided as-is and may not work on your system.
> 
> If you really want to use these, you will need to edit many files such as monitor config. You can create a personal fork and sync changes with git merge. Use at your own risk.


### Installation:
1. Clone the repo: `git clone https://github.com/mekb-turtle/dotfiles`
2. Run the following command to install the required packages with [Paru](https://github.com/Morganamilo/paru), or [you can install them manually, see the list below](#packages-to-install)

    -     paru -S hyprland hyprland-qtutils waybar waybar-mpris-git wttrbar dunst kitty hyprlock hyprpaper libnotify glib2 grim slurp wl-clipboard hyprpicker imagemagick jq tesseract tesseract-data-eng zbar pipewire pipewire-alsa pipewire-audio pipewire-jack pipewire-pulse playerctl wireplumber xdg-desktop-portal xdg-desktop-portal-hyprland keepassxc openssh ttf-fira-code ttf-fira-mono ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono ttf-twemoji ttf-ubuntu-font-family catppuccin-gtk-theme-mocha papirus-folders-catppuccin-git catppuccin-cursors-mocha qt5ct qt6ct kvantum swayosd-git cliphist nemo mpv feh firefox gimp krita brightnessctl hypridle elogind rofi-wayland rofi-emoji darkly perl

3. Run the following command to install Papirus folder icons:

    -     sudo papirus-folders -C cat-mocha-pink

4. If you are **<ins>not</ins>** using NVIDIA, remove the line `source=conf/env-nvidia.conf` in `hyprland.conf`.
5. Change configuration to your liking, e.g environment variables, startup scripts, and monitor layout
6. Run `./install` in the root of the repo to install the dotfiles
8. Start Hyprland by running `Hyprland`

> [!TIP]
> Edit then run `scripts/convert-wallpaper` to generate wallpapers for your monitor layout.

### Packages to install:
- `hyprland` `hyprland-qtutils` `waybar` `waybar-mpris-git` `wttrbar` `dunst` `kitty` `hyprpaper` `libnotify` `glib2` `jq` `swayosd-git` `cliphist` `brightnessctl`
- Screenshot util: `grim` `slurp` `wl-clipboard` `hyprpicker` `imagemagick` `jq` `tesseract` `zbar` https://github.com/mekb-turtle/foto
  - Foto is available on the AUR as `foto` or `foto-git`
- Audio and screensharing: `pipewire{,-alsa,-audio,-jack,-pulse}` `playerctl` `wireplumber` `xdg-desktop-portal{,-hyprland}`
- For power menu: https://github.com/mekb-turtle/do/ (add your user to the `do` group)
  - This tool is used to run power commands as root without password
  - To use it in your shell, run `\do shutdown` or `\do reboot`. You can also create aliases for these commands
- Auto-start keepassxc: `keepassxc` `openssh` (ssh-agent)
- Fonts: `ttf-fira-code` `ttf-fira-mono` `ttf-nerd-fonts-symbols` `ttf-nerd-fonts-symbols-mono` `ttf-twemoji` `ttf-ubuntu-font-family`
- Theme: `catppuccin-gtk-theme-mocha` `papirus-folders-catppuccin-git` `catppuccin-cursors-mocha` `qt5ct` `qt6ct` `kvantum` `darkly`
- Lock screen: `hyprlock`, `hypridle`, and `elogind`
- Additional applications: `nemo` `mpv` `feh` `firefox` `gimp` `krita` `perl`
  - GIMP is migrating to GTK3 in GIMP 3.0, along with other changes, so you may want to use the `gimp-git` package if you want that now
  - Run `sed -i 's/-Dworkshop=true/-Dworkshop=false/' PKGBUILD` when building `gegl-git` to fix compilation errors
- [`rofi-wayland`](https://github.com/lbonn/rofi) (wofi has lacking features) `rofi-emoji`

Also check out my [neovim config](https://github.com/mekb-turtle/nvim)
