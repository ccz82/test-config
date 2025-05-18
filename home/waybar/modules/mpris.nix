{
  programs.waybar.settings.bar = {
    mpris = {
      format = "{player_icon} {artist} - {title}";
      player-icons = {
        default = "󰝚";
        firefox = "";
      };
      max-length = 40;
      tooltip = false;
    };
  };
}
