{
  imports = [
    ./hardware-configuration.nix
    ../../nixos/audio.nix
    ../../nixos/bluetooth.nix
    ../../nixos/bootloader.nix
    ../../nixos/documentation.nix
    ../../nixos/environment.nix
    ../../nixos/flatpak.nix
    ../../nixos/graphics.nix
    ../../nixos/greetd.nix
    ../../nixos/laptop.nix
    ../../nixos/locale.nix
    ../../nixos/networking.nix
    ../../nixos/nix.nix
    ../../nixos/nixpkgs.nix
    ../../nixos/programs.nix
    ../../nixos/security.nix
    ../../nixos/stylix.nix
    ../../nixos/timezone.nix
    ../../nixos/users.nix
  ];

  networking.hostName = "zenbook";

  system.stateVersion = "24.05";
}
