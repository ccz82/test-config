{pkgs, ...}: {
  programs = {
    zsh.enable = true;
    niri.enable = true;
  };
  programs.niri.package = pkgs.niri-unstable;
}
