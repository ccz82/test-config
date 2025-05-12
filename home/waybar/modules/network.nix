{
  programs.waybar.settings.bar = {
    network = {
      format = "{icon} ";
      format-icons = {
        ethernet = "󰈀";
        wifi = [
          "󰤟"
          "󰤢"
          "󰤥"
          "󰤨"
        ];
        linked = "󰈀";
        disconnected = "󱘖";
      };
      tooltip = false;
    };
  };
}
