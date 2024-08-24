{ pkgs, ... }:

{
  imports = [
    ./bootloader.nix
    ./nix.nix
    ./networking.nix
    ./bluetooth.nix
    ./graphics.nix
    ./audio.nix
    ./security.nix
    ./timezone.nix
    ./locale.nix
    ./users.nix
    ./stylix.nix
  ];

  environment.pathsToLink = [
    "/share/zsh"
    "/share/xdg-desktop-portal"
    "/share/applications"
  ];

  environment.systemPackages = with pkgs; [
    vim
  ];

  programs = {
    zsh.enable = true;
    hyprland.enable = true;
  };

  system.stateVersion = "24.05";
}
