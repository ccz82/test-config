{ pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    plugins = with pkgs.hyprlandPlugins; [ hy3 ];
    settings = {
      "$mod" = "ALT";
      general = {
        layout = "hy3";
        gaps_out = 10;
      };
      monitor = "eDP-1, preferred, auto, 2";
      input = {
        kb_options = "caps:escape";
        touchpad = {
          natural_scroll = true;
        };
      };
      gestures = {
        workspace_swipe = true;
        workspace_swipe_fingers = 3;
      };
      decoration = {
        rounding = 10;
      };
      animations = {
        enabled = true;
        bezier = "curve, 0.06, 0.71, 0.25, 1";
        animation = [
          "windowsIn, 1, 3, curve, slide"
          "windowsOut, 1, 3, curve, slide"
          "windowsMove, 1, 2.5, curve"
        ];
      };
      exec-once = [
        "waybar"
      ];
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
      bindl = [
        ", switch:on:Lid Switch, exec, hyprctl keyword monitor \"eDP-1, disable\""
        ", switch:off:Lid Switch, exec, hyprctl keyword monitor \"eDP-1, preferred, auto, 2\""
        ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ", XF86AudioPlay, exec, playerctl play-pause"
        ", XF86AudioPrev, exec, playerctl previous"
        ", XF86AudioNext, exec, playerctl next"
      ];
      bindel = [
        ", XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+ --limit 1.0"
        ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- --limit 1.0"
        ", XF86MonBrightnessUp, exec, brightnessctl set 5%+ --min-value 16"
        ", XF86MonBrightnessDown, exec, brightnessctl set 5%- --min-value 16"
      ];
      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];
      layerrule = [
        "noanim, wofi"
      ];
      windowrulev2 = [
        "float, title:^(Picture-in-Picture)$"
      ];
      misc = {
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
      };
    };
  };
}
