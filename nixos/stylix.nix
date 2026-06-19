{pkgs, ...}: {
  stylix = {
    enable = true;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/kanagawa-dragon.yaml";

    polarity = "dark";

    # image = pkgs.fetchurl {
    #   url = "https://w.wallhaven.cc/full/ml/wallhaven-mlzoy1.png";
    #   sha256 = "sha256-/iSzlSy1OoVUfXDc2pTbk9W/DaY5swSF+mnjDQurESo=";
    # };

    opacity.terminal = 0.85;

    fonts = {
      sansSerif = {
        package = pkgs.rubik;
        name = "Rubik";
      };
      serif = {
        package = pkgs.noto-fonts;
        name = "Noto Serif";
      };
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font Mono";
      };
      sizes.terminal = 14;
    };

    cursor = {
      package = pkgs.posy-cursors;
      name = "Posy_Cursor_Black";
      size = 32;
    };

    icons = {
      enable = true;
      package = pkgs.mint-y-icons;
      dark = "Mint-Y";
      light = "Mint-Y";
    };
  };
}
