# ccz's nixos-config

sudo nixos-generate-config --show-hardware-config >./nixos/hardware-configuration.nix
git add ./nixos/hardware-configuration.nix
NIX_CONFIG="experimental-features = nix-command flakes"
sudo nixos-rebuild switch --flake .#nixos
