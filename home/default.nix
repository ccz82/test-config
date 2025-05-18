{
  username,
  pkgs,
  ...
}: {
  imports = [
    ./hyprland
    ./nixvim
    ./walker
    ./waybar
    ./bat.nix
    ./direnv.nix
    ./editorconfig.nix
    ./fastfetch.nix
    ./fd.nix
    ./gh.nix
    ./git.nix
    ./helix.nix
    ./jq.nix
    ./kitty.nix
    ./lazygit.nix
    ./lutris.nix
    ./mako.nix
    ./packages.nix
    ./ripgrep.nix
    ./starship.nix
    ./tmate.nix
    ./tmux.nix
    ./xdg.nix
    ./yazi.nix
    ./zathura.nix
    ./zed-editor.nix
    ./zsh.nix
  ];

  # NOTE: temp
  stylix.iconTheme.package = pkgs.papirus-icon-theme;
  stylix.iconTheme.light = "Papirus Light";
  stylix.iconTheme.dark = "Papirus Dark";

  home = {
    username = "${username}";
    homeDirectory = "/home/${username}";
    sessionVariables = {
      MANPAGER = "nvim +Man!";
    };
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
