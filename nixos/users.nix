{
  pkgs,
  username,
  ...
}: {
  users.users.${username} = {
    shell = pkgs.zsh;
    isNormalUser = true;
    extraGroups = ["wheel"];
  };
}
