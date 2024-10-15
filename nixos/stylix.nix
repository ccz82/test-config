{pkgs, ...}: {
  stylix = {
    enable = true;

    image = pkgs.fetchurl {
      url = "https://gruvbox-wallpapers.pages.dev/wallpapers/mix/gruvb99810.png";
      sha256 = "171c6a1738b6bb9998ab984b547063070f38aac7b538c3e6235b26e2079e3040";
    };

    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";

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
        package = pkgs.nerdfonts.override {fonts = ["JetBrainsMono"];};
        name = "JetBrainsMono Nerd Font Mono";
      };
      sizes = {
        terminal = 14;
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
