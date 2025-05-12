{
  programs.waybar.settings.bar = {
    "group/power" = {
      orientation = "horizontal";
      modules = [
        "custom/nixos"
        "custom/quit"
        "custom/lock"
        "custom/reboot"
        "custom/shutdown"
      ];
      drawer.click-to-reveal = true;
    };

    "custom/nixos" = {
      format = " ";
      tooltip = false;
    };

    "custom/quit" = {
      format = "󰍂";
      tooltip = false;
      on-click = "hyprctl dispatch exit";
    };

    "custom/lock" = {
      format = "󰍁";
      tooltip = false;
      on-click = "hyprlock";
    };

    "custom/reboot" = {
      format = "";
      tooltip = false;
      on-click = "reboot";
    };

    "custom/shutdown" = {
      format = "󰤆";
      tooltip = false;
      on-click = "shutdown now";
    };
  };
}
