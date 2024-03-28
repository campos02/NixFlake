{ config, pkgs, ... }:

{
  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    firefox
    vscodium
    steam-run
    hyfetch
    discord
    spotify
    pavucontrol
    htop
    wofi
    hyprpaper
    font-awesome
    grim
    slurp
    wl-clipboard
    chromium
    vlc
    libreoffice
    playerctl
  ];
}
