{
  imports = [
    ./hardware-configuration.nix
    ../../nixos/audio.nix
    ../../nixos/bluetooth.nix
    ../../nixos/bootloader.nix
    ../../nixos/environment.nix
    ../../nixos/flakes.nix
    ../../nixos/flatpak.nix
    # ../../nixos/fprintd.nix
    ../../nixos/graphics.nix
    ../../nixos/greetd.nix
    ../../nixos/i18n.nix
    ../../nixos/laptop.nix
    ../../nixos/networking.nix
    ../../nixos/openssh.nix
    ../../nixos/optimisation.nix
    ../../nixos/programs.nix
    ../../nixos/security.nix
    ../../nixos/stylix.nix
    ../../nixos/timezone.nix
    ../../nixos/users.nix
  ];

  nixpkgs.config.allowUnfree = true;

  networking.hostName = "chromebook";

  system.stateVersion = "24.05";
}
