{pkgs, ...}: {
  environment = {
    pathsToLink = [
      "/share/zsh"
      "/share/xdg-desktop-portal"
      "/share/applications"
    ];
    systemPackages = with pkgs; [
      vim
      gcc
      gnumake
    ];
  };
}
