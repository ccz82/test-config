{
  programs.waybar.settings.bar = {
    "group/hardware" = {
      orientation = "horizontal";
      modules = ["network" "bluetooth" "battery"];
    };
  };
}
