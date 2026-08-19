{config, ...}: {
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      # upd = "sudo nixos-rebuild switch --flake .";
      upd = "nh os switch --ask";
    };
    dotDir = "${config.xdg.configHome}/zsh";
  };
}
