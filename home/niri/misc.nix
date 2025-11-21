{
  programs.niri.settings = {
    spawn-at-startup = [
      {command = ["lan-mouse" "daemon"];}
    ];
    prefer-no-csd = true;
    hotkey-overlay.skip-at-startup = true;
  };
}
