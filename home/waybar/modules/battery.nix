{
  programs.waybar.settings.bar = {
    battery = {
      format = "{icon} {capacity}%";
      format-icons = {
        discharging = [
          "󰂎"
          "󰁺"
          "󰁻"
          "󰁼"
          "󰁽"
          "󰁾"
          "󰁿"
          "󰂀"
          "󰂁"
          "󰂂"
          "󰁹"
        ];
        charging = [
          "󰢟 "
          "󰢜 "
          "󰂆 "
          "󰂇 "
          "󰂈 "
          "󰢝 "
          "󰂉 "
          "󰢞 "
          "󰂊 "
          "󰂋 "
          "󰂅 "
        ];
        full = "󰁹";
      };
      tooltip = false;
    };
  };
}
