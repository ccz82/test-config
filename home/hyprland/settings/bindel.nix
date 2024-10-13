{
  wayland.windowManager.hyprland.settings = {
    bindel = [
      ", XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+ --limit 1.0"
      ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- --limit 1.0"
      ", XF86MonBrightnessUp, exec, brightnessctl set 5%+ --min-value 16"
      ", XF86MonBrightnessDown, exec, brightnessctl set 5%- --min-value 16"
    ];
  };
}
