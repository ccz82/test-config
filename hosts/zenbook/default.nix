{pkgs, ...}: {
  imports = [
    ./hardware-configuration.nix
    ../../nixos/audio.nix
    ../../nixos/bluetooth.nix
    ../../nixos/bootloader.nix
    ../../nixos/environment.nix
    ../../nixos/flakes.nix
    ../../nixos/flatpak.nix
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

  # NOTE: this may be cursed
  nixpkgs.config.allowUnfree = true;

  # NOTE: testing fingerprint out
  systemd.services.fprintd = {
    wantedBy = ["multi-user.target"];
    serviceConfig.Type = "simple";
  };
  services.fprintd.enable = true;
  services.fprintd.tod.enable = true;
  services.fprintd.tod.driver = pkgs.libfprint-2-tod1-goodix-550a;

  networking.hostName = "zenbook";

  system.stateVersion = "24.05";
}
