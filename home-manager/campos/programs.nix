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
}