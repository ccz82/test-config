{
  stylix.targets.waybar.enable = false;

  programs.waybar = {
    enable = true;
    settings.bar = {
      layer = "top";
      position = "top";
      modules-left = ["group/power" "group/controls" "idle_inhibitor"];
      modules-center = ["hyprland/workspaces"];
      modules-right = ["hyprland/submap" "group/cpu-usage" "group/memory-usage" "group/hardware" "clock"];
      spacing = 8;
    };
    style = ./style.css;
  };

  imports = [
    ./modules/group-power.nix
    ./modules/group-controls.nix
    ./modules/idle-inhibitor.nix
    ./modules/pulseaudio.nix
    ./modules/backlight.nix
    ./modules/hyprland-workspaces.nix
    ./modules/hyprland-submap.nix
    ./modules/group-cpu-usage.nix
    ./modules/group-memory-usage.nix
    ./modules/group-hardware.nix
    ./modules/network.nix
    ./modules/bluetooth.nix
    ./modules/battery.nix
    ./modules/clock.nix
  ];
}
