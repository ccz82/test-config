{
  imports = [
    ./hardware-configuration.nix
    ../../nixos/audio.nix
    ../../nixos/bluetooth.nix
    ../../nixos/bootloader.nix
    ../../nixos/environment.nix
    ../../nixos/flakes.nix
    ../../nixos/flatpak.nix
    ../../nixos/graphics.nix
    ../../nixos/i18n.nix
    ../../nixos/kernel.nix
    ../../nixos/keyd.nix
    # ../../nixos/laptop.nix
    ../../nixos/greetd.nix
    ../../nixos/networking.nix
    ../../nixos/openssh.nix
    ../../nixos/optimisation.nix
    ../../nixos/overlays.nix
    ../../nixos/programs.nix
    ../../nixos/security.nix
    ../../nixos/stylix.nix
    ../../nixos/timezone.nix
    ../../nixos/udisks2.nix
    ../../nixos/users.nix
  ];

  hardware.i2c.enable = true;

  services.xserver.videoDrivers = ["nvidia"];
  hardware.nvidia.open = true;

  nixpkgs.config.allowUnfree = true;

  networking.hostName = "ccz-desktop";

  system.stateVersion = "24.05";
}
