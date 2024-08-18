{ config, pkgs, hostname, username, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./nix.nix
    ./bootloader.nix
    ./networking.nix
    ./bluetooth.nix
    ./graphics.nix
    ./audio.nix
    ./security.nix
    ./users.nix
    ./timezone.nix
    ./locale.nix
    ./stylix.nix
  ];

  environment.pathsToLink = [ "/share/zsh" ];
  environment.systemPackages = with pkgs; [
    vim
  ];

  programs.zsh.enable = true;

  system.stateVersion = "24.05";
}
