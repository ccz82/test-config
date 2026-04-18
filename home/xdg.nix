{pkgs, ...}: {
  xdg.enable = true;
  xdg.portal = {
    enable = true;
    config.niri.default = ["gnome" "gtk"];
    extraPortals = with pkgs; [
      xdg-desktop-portal-gnome
      xdg-desktop-portal-gtk
    ];
  };
}
