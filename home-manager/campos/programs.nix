{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "campos";
    userEmail = "nonesovile96@hotmail.com";
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    
    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "sudo"
      ];
      theme = "flazz";
    };

    plugins = [
      {
        name = "zsh-nix-shell";
        file = "nix-shell.plugin.zsh";
        src = pkgs.fetchFromGitHub {
          owner = "chisui";
          repo = "zsh-nix-shell";
          rev = "v0.8.0";
          sha256 = "1lzrn0n4fxfcgg65v0qhnj7wnybybqzs4adz7xsrkgmcsr0ii8b7";
        };
      }
    ];
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