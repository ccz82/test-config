{pkgs, ...}: {
  home.packages = with pkgs; [
    xwayland-satellite
    brightnessctl
  ];

  programs.niri.package = pkgs.niri-unstable;

  imports = [
    ./input.nix
    ./outputs.nix
    ./binds.nix
    ./layout.nix
    ./window-rules.nix
    ./layer-rules.nix
    ./misc.nix
  ];
}
