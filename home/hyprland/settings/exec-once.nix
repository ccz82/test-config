{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "systemctl --user start hyprpolkitagent"
      "waybar"
      "walker --gapplication-service"
      "hypridle"
    ];
  };
}
