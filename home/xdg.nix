{pkgs, ...}: {
  xdg = {
    enable = true;
    portal = {
      enable = true;
      extraPortals = with pkgs; [
        xdg-desktop-portal-gnome
        xdg-desktop-portal-gtk
      ];
      config = {
        hyprland = {
          default = ["hyprland" "gtk"];
          "org.freedesktop.impl.portal.ScreenCast" = [
            "hyprland"
          ];
        };
      };
    };
  };
}
