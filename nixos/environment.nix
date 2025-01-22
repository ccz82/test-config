{pkgs, ...}: {
  environment.pathsToLink = [
    "/share/zsh"
    "/share/xdg-desktop-portal"
    "/share/applications"
  ];

  environment.systemPackages = with pkgs; [vim];
}
