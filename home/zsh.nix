{config, ...}: {
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      upd = "sudo nixos-rebuild switch --flake .";
    };
    dotDir = "${config.xdg.configHome}/zsh";
  };
}
