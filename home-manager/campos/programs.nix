{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "campos";
    userEmail = "nonesovile96@gmail.com";
  };

  programs.zsh = {
    enable = true;
    
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" ];
      theme = "flazz";
    };
  };

  wayland.windowManager.hyprland = {
    enable = true;
    settings = import ./hyprland.nix;
  };

  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
    settings = import ./waybar.nix;
    style = import ./waybar-style.nix;
  };

  programs.kitty = {
    enable = true;
    package = pkgs.kitty;

    settings = {
      enable_audio_bell = false;
      background_opacity = "0.7";
      confirm_os_window_close = 0;
    };
  };

  services.mako = {
    enable = true;
    package = pkgs.mako;
    backgroundColor = "#45484b";
    borderRadius = 5;
    defaultTimeout = 3000;
  };
}