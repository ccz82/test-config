{
  programs.sherlock = {
    enable = true;
    launchers = [
      # {
      #   name = "Weather";
      #   type = "weather";
      #   args = {
      #     location = "Singapore";
      #     update_interval = 60;
      #   };
      #   priority = 1;
      #   home = "OnlyHome";
      #   async = true;
      #   shortcut = false;
      #   spawn_focus = false;
      # }
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
        name = "App Launcher";
        alias = "app";
        type = "app_launcher";
        args = {};
        priority = 2;
        home = "Home";
      }
    ];
  };
}
