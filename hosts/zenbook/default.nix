{
  imports = [
    ./hardware-configuration.nix
    ../../nixos/audio.nix
    ../../nixos/bluetooth.nix
    ../../nixos/bootloader.nix
    ../../nixos/documentation.nix
    ../../nixos/environment.nix
    ../../nixos/flakes.nix
    ../../nixos/flatpak.nix
    ../../nixos/gnome-keyring.nix
    ../../nixos/graphics.nix
    ../../nixos/greetd.nix
    ../../nixos/i18n.nix
    ../../nixos/laptop.nix
    ../../nixos/networking.nix
    ../../nixos/optimisation.nix
    ../../nixos/programs.nix
    ../../nixos/security.nix
    ../../nixos/stylix.nix
    ../../nixos/timezone.nix
    ../../nixos/unfree.nix
    ../../nixos/users.nix
  ];

  networking.hostName = "zenbook";

  system.stateVersion = "24.05";
}
