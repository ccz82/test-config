{pkgs, ...}: {
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/kanagawa.yaml";
    image = pkgs.fetchurl {
      url = "https://w.wallhaven.cc/full/9d/wallhaven-9dmmr1.jpg";
      sha256 = "sha256-5Gxsb8w3hUHQyXqUhdBPG++olt8OkuoQIfNSU6yeAtU=";
    };
    opacity = {
      terminal = 0.8;
      # NOTE: temp
      applications = 0.1;
    };
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
      size = 32;
    };
  };
}
