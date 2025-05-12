{
  programs.waybar.settings.bar = {
    "group/memory-usage" = {
      orientation = "vertical";
      modules = ["custom/memory" "memory"];
    };

    "custom/memory" = {
      format = "MEM";
      tooltip = false;
    };

    memory = {
      format = "{percentage}%";
      tooltip = false;
    };
  };
}
