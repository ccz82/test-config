{
  imports = [
    ./hardware-configuration.nix
    ../../nixos/audio.nix
    ../../nixos/bluetooth.nix
    # TODO: change this once zenbook is not using GRUB
    ../../nixos/grub-bootloader.nix
    ../../nixos/environment.nix
    ../../nixos/flakes.nix
    ../../nixos/flatpak.nix
    ../../nixos/fprintd.nix
    # ../../nixos/gaming.nix
    ../../nixos/graphics.nix
    ../../nixos/i2c.nix
    ../../nixos/i18n.nix
    ../../nixos/kernel.nix
    ../../nixos/keyd.nix
    ../../nixos/laptop.nix
    ../../nixos/greetd.nix
    ../../nixos/networking.nix
    ../../nixos/nh.nix
    # ../../nixos/nvidia.nix
    ../../nixos/openssh.nix
    ../../nixos/optimisation.nix
    ../../nixos/overlays.nix
    ../../nixos/programs.nix
    ../../nixos/security.nix
    ../../nixos/stylix.nix
    ../../nixos/tailscale.nix
    ../../nixos/timezone.nix
    ../../nixos/udisks2.nix
    ../../nixos/users.nix
  ];

  # TODO: clean up
  # temporary Docker
  virtualisation.docker.enable = true;

  nixpkgs.config.allowUnfree = true;

  networking.hostName = "zenbook";

  system.stateVersion = "24.05";
}
