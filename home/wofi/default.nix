{ lib, ... }:

{
  programs.wofi = {
    enable = true;
    settings = {
      allow_images = true;
      image_size = 30;
      no_actions = true;
      hide_scroll = true;
    };
    style = lib.mkForce (builtins.readFile ./style.css);
  };
}
