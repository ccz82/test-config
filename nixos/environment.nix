{pkgs, inputs, ...}: {
  environment.pathsToLink = [
    "/share/zsh"
    "/share/xdg-desktop-portal"
    "/share/applications"
  ];

  environment.systemPackages = with pkgs; [
    vim
    inputs.zen-browser.packages."${system}".default
  ];
}
