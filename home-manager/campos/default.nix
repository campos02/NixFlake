{ config, pkgs, ... }:

{
  imports = [
    ./packages.nix
    ./programs.nix
  ];

  home.username = "campos";
  home.homeDirectory = "/home/campos";
  
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}