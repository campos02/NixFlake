{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "campos";
    userEmail = "nonesovile96@hotmail.com";
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
    settings = import ./settings-files/hyprland.nix;
  };

  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
    settings = import ./settings-files/waybar.nix;
    style = import ./styles/waybar-style.nix;
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

  programs.wofi = {
    enable = true;
    style = import ./styles/wofi-style.nix;
  };

  services.mako = {
    enable = true;
    package = pkgs.mako;
    backgroundColor = "#45484b";
    borderRadius = 5;
    defaultTimeout = 3000;
  };

  services.udiskie.enable = true;
}