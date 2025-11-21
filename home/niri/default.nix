{pkgs, ...}: {
  home.packages = with pkgs; [
    xwayland-satellite
    brightnessctl
  ];

  imports = [
    ./input.nix
    ./binds.nix
    ./layout.nix
    ./window-rules.nix
    ./misc.nix
  ];
}
