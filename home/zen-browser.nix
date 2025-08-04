{
  inputs,
  username,
  ...
}: {
  imports = [inputs.zen-browser.homeModules.twilight];

  stylix.targets.zen-browser.profileNames = [username];

  programs.zen-browser = {
    enable = true;
    profiles."${username}" = {
      settings = {
        "zen.view.compact.should-enable-at-startup" = true;
      };
    };
  };
}
