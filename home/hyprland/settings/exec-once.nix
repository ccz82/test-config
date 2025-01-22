{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "systemctl --user start hyprpolkitagent"
      "hypridle"
      "fcitx5 -d -r"
      "fcitx5-remote -r"
    ];
  };
}
