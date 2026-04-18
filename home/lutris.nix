{
  pkgs,
  osConfig,
  ...
}: {
  programs.lutris = {
    enable = true;
    protonPackages = with pkgs; [proton-ge-bin];
    winePackages = with pkgs; [wineWow64Packages.full];
    steamPackage = osConfig.programs.steam.package;
    extraPackages = with pkgs; [winetricks umu-launcher];
  };
}
