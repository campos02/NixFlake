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

  programs.tmux = {
    enable = true;
    shortcut = "a";
    clock24 = true;
    disableConfirmationPrompt = true;

    newSession = true;
    escapeTime = 0;
    secureSocket = false;

    plugins = with pkgs; [
      tmuxPlugins.better-mouse-mode
    ];

    extraConfig = ''
      # Mouse works as expected
      set-option -g mouse on
    '';
  };
}