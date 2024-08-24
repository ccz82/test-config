{ config, pkgs, username, ... }:

{
  imports = [
    ./git.nix
    ./gh.nix
    ./zsh.nix
    ./starship.nix
    ./hyprland.nix
    ./xdg.nix
    ./kitty.nix
    ./wofi.nix
    ./firefox.nix
  ];

  home = {
    username = "${username}";
    homeDirectory = "/home/${username}";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
