{username, ...}: {
  imports = [
    ./niri
    ./nixvim
    ./waybar
    ./aria2.nix
    ./bat.nix
    ./btop.nix
    ./claude-code.nix
    ./direnv.nix
    ./editorconfig.nix
    ./fastfetch.nix
    ./fd.nix
    ./fzf.nix
    ./gh.nix
    ./git.nix
    ./gnome-keyring.nix
    ./helix.nix
    ./jq.nix
    ./kitty.nix
    ./lan-mouse.nix
    ./lazygit.nix
    ./lazysql.nix
    ./lutris.nix
    ./mako.nix
    ./mpd.nix
    ./nix-index.nix
    ./packages.nix
    ./playerctld.nix
    ./ripgrep.nix
    ./sherlock.nix
    ./starship.nix
    ./taskwarrior.nix
    ./tmux.nix
    ./udiskie.nix
    ./xdg.nix
    ./yazi.nix
    ./yt-dlp.nix
    ./zathura.nix
    ./zed-editor.nix
    ./zen-browser.nix
    ./zsh.nix
  ];

  home = {
    username = "${username}";
    homeDirectory = "/home/${username}";
    sessionVariables = {
      MANPAGER = "nvim +Man!";
    };
    sessionPath = [
      "$HOME/.zvm/bin"
    ];
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
