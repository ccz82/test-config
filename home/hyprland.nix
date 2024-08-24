{ pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    plugins = with pkgs.hyprlandPlugins; [ hy3 ];
    settings = {
      "$mod" = "ALT";
      "$terminal" = "kitty";
      "$menu" = "wofi --show drun";

      general = {
        layout = "hy3";
      };

      monitor = ", preferred, auto, 1";

      input = {
        touchpad = {
          natural_scroll = true;
        };
      };

      decoration = { };

      animations = {
        enabled = true;

        bezier = [
          "windowIn, 0.06, 0.71, 0.25, 1"
          "windowResize, 0.04, 0.67, 0.38, 1"
        ];

        animation = [
          "windowsIn, 1, 3, windowIn, slide #popin 20%"
          "windowsOut, 1, 3, windowIn, slide #popin 70%"
          "windowsMove, 1, 2.5, windowResize"
          "border, 1, 10, default"
          "borderangle, 1, 8, default"
          "fade, 1, 3, default"
          "workspaces, 1, 6, default"
          "layers, 1, 5, windowIn, slide"
        ];
      };

      misc = {
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
      };

      bind = [
        "$mod SHIFT, e, exit"
        "$mod SHIFT, q, hy3:killactive"
        "$mod, Return, exec, $terminal"
        "$mod, Space, exec, $menu"
        "$mod, f, fullscreen, 0"
        "$mod, h, hy3:movefocus, l"
        "$mod, j, hy3:movefocus, d"
        "$mod, k, hy3:movefocus, u"
        "$mod, l, hy3:movefocus, r"
        "$mod SHIFT, h, hy3:movewindow, l, once"
        "$mod SHIFT, j, hy3:movewindow, d, once"
        "$mod SHIFT, k, hy3:movewindow, u, once"
        "$mod SHIFT, l, hy3:movewindow, r, once"
      ]
      ++ (
        builtins.concatLists (builtins.genList
          (
            x:
            let
              ws =
                let
                  c = (x + 1) / 10;
                in
                builtins.toString (x + 1 - (c * 10));
            in
            [
              "$mod, ${ws}, workspace, ${toString (x + 1)}"
              "$mod SHIFT, ${ws}, hy3:movetoworkspace, ${toString (x + 1)}"
            ]
          )
          10)
      );
    };
  };
}
