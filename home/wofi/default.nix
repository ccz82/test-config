{
  stylix.targets.wofi.enable = false;

  programs.wofi = {
    enable = true;
    settings = {
      allow_images = true;
      image_size = 30;
      no_actions = true;
      hide_scroll = true;
    };
    style = builtins.readFile ./style.css;
  };
}
