{username, ...}: {
  programs.niri.settings = {
    spawn-at-startup = [
      {command = ["lan-mouse" "daemon"];}
      {command = ["swaybg" "-i" "/home/${username}/wallpaper.png" "-m" "fill"];}
    ];
    prefer-no-csd = true;
    hotkey-overlay.skip-at-startup = true;
  };
}
