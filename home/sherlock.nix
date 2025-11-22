{
  programs.sherlock = {
    enable = true;
    launchers = [
      {
        name = "Calculator";
        type = "calculation";
        args.capabilities = [
          "calc.math"
          "calc.units"
        ];
        priority = 1;
      }
      {
        name = "AOC Monitor Input";
        alias = "mi";
        type = "command";
        args = {
          commands = {
            DP = {
              icon = "video-display";
              exec = "ddcutil setvcp 0x60 0x0f";
              search_string = "dp";
            };
            HDMI1 = {
              icon = "video-display";
              exec = "ddcutil setvcp 0x60 0x11";
              search_string = "hdmi1";
            };
            HDMI2 = {
              icon = "video-display";
              exec = "ddcutil setvcp 0x60 0x12";
              search_string = "hdmi2";
              # tag_start = "{keyword}";
              # tag_end = "{keyword}";
            };
          };
        };
        priority = 2;
      }
      {
        name = "App Launcher";
        alias = "app";
        type = "app_launcher";
        args = {};
        priority = 3;
        home = "Home";
      }
    ];
  };
}
