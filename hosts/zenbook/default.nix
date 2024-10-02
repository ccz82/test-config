{
  imports = [
    ./hardware-configuration.nix
    ../../nixos
    ../../nixos/laptop.nix
  ];

  networking.hostName = "zenbook";
}
