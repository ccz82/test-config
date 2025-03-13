{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "systemctl --user start hyprpolkitagent"
      "waybar"
      "hypridle"
      "fcitx5 -d -r"
      "fcitx5-remote -r"
    ];
  };
}
