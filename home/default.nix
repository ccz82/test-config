{ config, inputs, username, ... }:

{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./packages.nix
    ./nixvim
    ./git.nix
    ./gh.nix
    ./zsh.nix
    ./starship.nix
    ./hyprland.nix
    ./xdg.nix
    ./kitty.nix
    ./wofi
  ];

  home = {
    username = "${username}";
    homeDirectory = "/home/${username}";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
