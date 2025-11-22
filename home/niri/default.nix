{pkgs, ...}: {
  home.packages = with pkgs; [
    xwayland-satellite
    brightnessctl
  ];

  imports = [
    ./input.nix
    ./outputs.nix
    ./binds.nix
    ./layout.nix
    ./window-rules.nix
    ./misc.nix
  ];
}
