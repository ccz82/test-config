{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./nix.nix
    ./nixpkgs.nix
    ./bootloader.nix
    ./networking.nix
    ./bluetooth.nix
    ./graphics.nix
    ./audio.nix
    ./security.nix
    ./timezone.nix
    ./locale.nix
    ./users.nix
    ./greetd.nix
    ./stylix.nix
    ./flatpak.nix
  ];

  environment.pathsToLink = [
    "/share/zsh"
    "/share/xdg-desktop-portal"
    "/share/applications"
  ];

  environment.systemPackages = with pkgs; [
    vim
    inputs.zen-browser.packages."${system}".specific
  ];

  programs = {
    zsh.enable = true;
    hyprland.enable = true;
  };

  system.stateVersion = "24.05";
}
