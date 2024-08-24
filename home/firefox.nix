{ username, pkgs, ... }:

{
  programs.firefox = {
    enable = true;
    profiles.${username} = {
      name = "${username}";
      isDefault = true;
      settings = {
        "browser.aboutConfig.showWarning" = false;
        "ui.key.menuAccessKeyFocuses" = false;
        "widget.use-xdg-desktop-portal.file-picker" = 1;
        "sidebar.revamp" = true;
        "sidebar.verticalTabs" = true;
      };
      extensions = with pkgs.nur.repos.rycee.firefox-addons; [
        ublock-origin
        sponsorblock
      ];
    };
  };
}
