{ config, pkgs, username, ... }:

{
  imports = [
    ./nixpkgs.nix
    ./git.nix
    ./zsh.nix
    ./starship.nix
    ./hyprland.nix
    ./kitty.nix
    ./wofi.nix
    ./xdg.nix
    ./firefox.nix
  ];

  home = {
    username = "${username}";
    homeDirectory = "/home/${username}";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
