{
  programs.waybar.settings.bar = {
    "group/cpu-usage" = {
      orientation = "vertical";
      modules = ["custom/cpu" "cpu"];
    };

    "custom/cpu" = {
      format = "CPU";
      tooltip = false;
    };

    cpu = {
      format = "{usage}%";
      tooltip = false;
    };
  };
}
