{ config, pkgs, ... }:

{
  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    firefox
    vscodium
    hyfetch
    discord
    spotify
    chromium
    vlc
    libreoffice
  ];
}
