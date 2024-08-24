{ username, pkgs, ... }:

{
  programs.firefox = {
    enable = true;
    profiles.${username} = {
      isDefault = true;
      extensions = with pkgs.nur.repos.rycee.firefox-addons; [
        ublock-origin
        sponsorblock
      ];
    };
  };
}
