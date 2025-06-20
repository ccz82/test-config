{inputs, username, ...}: {
  imports = [inputs.zen-browser.homeModules.twilight];

  programs.zen-browser = {
    enable = true;
    # profiles."${username}" = {
    #   extensions =
    # };
  };
}
