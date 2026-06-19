{
  programs.niri.settings.window-rules = [
    {
      geometry-corner-radius = let
        radius = 12.0;
      in {
        bottom-left = radius;
        bottom-right = radius;
        top-left = radius;
        top-right = radius;
      };
      draw-border-with-background = false;
      clip-to-geometry = true;
      background-effect.blur = true;
    }
    {
      matches = [
        {
          title = "^Picture-in-Picture$";
        }
      ];
      open-floating = true;
      default-column-width.fixed = 960;
      default-window-height.fixed = 540;
    }
  ];
}
