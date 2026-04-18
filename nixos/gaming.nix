{pkgs, ...}: {
  programs.gamemode.enable = true;
  programs.steam.enable = true;
  programs.steam.extraCompatPackages = with pkgs; [proton-ge-bin];
  programs.steam.gamescopeSession.enable = true;
  programs.gamescope.enable = true;
}
