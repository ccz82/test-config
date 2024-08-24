{ ... }:

{
  imports = [ 
    ./hardware-configuration.nix
    ../../nixos
  ];

  networking.hostName = "chromebook";
}
