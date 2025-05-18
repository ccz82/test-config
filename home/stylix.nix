{pkgs, ...}: {
  stylix.iconTheme = {
    package = pkgs.papirus-icon-theme;
    light = "Papirus Light";
    dark = "Papirus Dark";
  };
}
