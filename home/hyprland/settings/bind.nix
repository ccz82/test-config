{
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$mod SHIFT, p, exit"
      "$mod SHIFT, q, hy3:killactive"
      "$mod, Return, exec, kitty"
      "$mod, Space, exec, pkill wofi || wofi --show drun"
      "$mod, f, fullscreen, 0"
      "$mod, h, hy3:movefocus, l"
      "$mod, j, hy3:movefocus, d"
      "$mod, k, hy3:movefocus, u"
      "$mod, l, hy3:movefocus, r"
      "$mod SHIFT, h, hy3:movewindow, l, once"
      "$mod SHIFT, j, hy3:movewindow, d, once"
      "$mod SHIFT, k, hy3:movewindow, u, once"
      "$mod SHIFT, l, hy3:movewindow, r, once"
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"
      "$mod SHIFT, 1, hy3:movetoworkspace, 1"
      "$mod SHIFT, 2, hy3:movetoworkspace, 2"
      "$mod SHIFT, 3, hy3:movetoworkspace, 3"
      "$mod SHIFT, 4, hy3:movetoworkspace, 4"
      "$mod SHIFT, 5, hy3:movetoworkspace, 5"
      "$mod SHIFT, 6, hy3:movetoworkspace, 6"
      "$mod SHIFT, 7, hy3:movetoworkspace, 7"
      "$mod SHIFT, 8, hy3:movetoworkspace, 8"
      "$mod SHIFT, 9, hy3:movetoworkspace, 9"
    ];
  };
}