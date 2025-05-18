{
  wayland.windowManager.hyprland.extraConfig = ''
    bind = $mod, r, submap, resize
    submap = resize
    binde = , h, resizeactive, -10 0
    binde = , j, resizeactive, 0 10
    binde = , k, resizeactive, 0 -10
    binde = , l, resizeactive, 10 0
    bind = , escape, submap, reset
    submap = reset
  '';
}
