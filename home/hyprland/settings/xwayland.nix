{
  wayland.windowManager.hyprland.settings = {
    xwayland.force_zero_scaling = true;
    env = [
      "ELECTRON_OZONE_PLATFORM_HINT, auto"
      "GDK_SCALE, 2"
      "XCURSOR_SIZE, 32"
    ];
  };
}
