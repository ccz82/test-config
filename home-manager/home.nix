{ config, pkgs, username, email, ... }:

{
  home = {
    username = "${username}";
    homeDirectory = "/home/${username}";
    packages = with pkgs; [
      zip
      unzip
      ripgrep
      fzf
      jq
      fd
      gnumake
      xmake
      fastfetch
      gcc
      rustc
      cargo
      zig
      python3
      bun
      tectonic
    ];
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };

  programs = {
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;

      shellAliases = {
        update = "sudo nixos-rebuild switch";
      };
    };

    git = {
      enable = true;
      userName = "${username}";
      userEmail = "${email}";
    };

    home-manager.enable = true;
  };

  home.stateVersion = "24.05";
}
