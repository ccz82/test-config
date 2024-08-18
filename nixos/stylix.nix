{ pkgs, ... }:

{
  stylix = {
    enable = true;
    image = pkgs.fetchurl {
      url = "https://w.wallhaven.cc/full/2k/wallhaven-2k2rmg.jpg";
      sha256 = "54872257224ef3a5d8c2289a724e276d30c6fb56c8c18d4871d60e60f86ce6f2";
    };
    base16Scheme = "${pkgs.base16-schemes}/share/themes/kanagawa.yaml";
    polarity = "dark";
    opacity = {
      terminal = 0.75;
      applications = 1.0;
      desktop = 1.0;
      popups = 1.0;
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
        package = pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; };
        name = "JetBrainsMono Nerd Font Mono";
      };
      sizes = {
        terminal = 15;
        applications = 12;
        desktop = 12;
        popups = 12;
      };
    };
    targets = {
      grub.enable = false;
    };
  };
}
