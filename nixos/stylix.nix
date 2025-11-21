{pkgs, ...}: {
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/kanagawa-dragon.yaml";
    image = pkgs.fetchurl {
      url = "https://w.wallhaven.cc/full/d8/wallhaven-d8p7w3.jpg";
      sha256 = "sha256-1F/l2YCHYQP3KY1jm9MLpUg7MWh2DTIo1DsTepU5pW0=";
    };
    # opacity.terminal = 0.75;
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
