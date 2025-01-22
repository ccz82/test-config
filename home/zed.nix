{
  programs.zed-editor = {
    enable = true;
    extensions = [
      "zig"
    ];
    userSettings = {
      vim_mode = true;
      relative_line_numbers = true;
      show_whitespaces = "all";
      scrollbar.show = "never";
      outline_panel.dock = "right";
      inlay_hints.enable = true;
      assistant = {
        version = "2";
        default_model = {
          provider = "copilot_chat";
          model = "claude-3-5-sonnet";
        };
      };
    };
  };
}
