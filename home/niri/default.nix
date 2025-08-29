{pkgs, ...}: {
  home.packages = with pkgs; [
    xwayland-satellite
    brightnessctl
  ];

  programs.niri.settings.spawn-at-startup = [
    {command = ["xwayland-satellite"];}
  ];

  programs.niri.settings.environment = {
    DISPLAY = ":0";
  };

  imports = [
    ./input.nix
    ./binds.nix
    ./layout.nix
    ./window-rules.nix
    ./misc.nix
  ];
}
