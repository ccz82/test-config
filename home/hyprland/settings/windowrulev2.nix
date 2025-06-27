{
  wayland.windowManager.hyprland.settings = {
    windowrulev2 = [
      "opacity 0.9 0.7, class:^(zen)$"
      "float, title:^(Picture-in-Picture)$"
      "pin, title:^(Picture-in-Picture)$"
      # FIX: because crystal realms is a bum
      "opacity 0.0,title:^(Application Not Responding)$"
      "nofocus,title:^(Application Not Responding)$"
      "noborder,title:^(Application Not Responding)$"
      "noshadow,title:^(Application Not Responding)$"
      "noblur,title:^(Application Not Responding)$"
    ];
  };
}
