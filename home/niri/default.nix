{pkgs, ...}: {
  home.packages = with pkgs; [
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
