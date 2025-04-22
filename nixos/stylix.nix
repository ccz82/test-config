{pkgs, ...}: {
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/kanagawa.yaml";
    image = pkgs.fetchurl {
      url = "https://w.wallhaven.cc/full/rr/wallhaven-rrv7x7.jpg";
      sha256 = "sha256-3E6jDIC++w1wuIMv1keYPqbJDk8kSAdWm1B3C2MK9cs=";
    };
    opacity.terminal = 0.85;
    fonts = {
      sansSerif = {
        package = pkgs.noto-fonts;
        name = "Noto Sans";
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
    };
  };
}
