{
  programs.waybar.settings.bar = {
    pulseaudio = {
      format = "{icon}  {volume}%";
      format-muted = " ";
      format-icons = {
        default = ["" "" " "];
        headphone = "";
        hdmi = "󰡁";
        headset = "";
        hands-free = "";
        portable = "";
        car = "";
        phone = "";
      };
      tooltip = false;
    };
  };
}
