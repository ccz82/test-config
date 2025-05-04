{
  lib,
  pkgs,
  ...
}: {
  programs.zed-editor = {
    enable = true;
    userSettings = {
      vim_mode = true;
      relative_line_numbers = true;
      show_whitespaces = "all";
      scrollbar.show = "never";
      outline_panel.dock = "right";
      inlay_hints.enable = true;
      load_direnv = "shell_hook";
      lsp = {
        rust-analyzer = {
          binary = {
            path = lib.getExe pkgs.rust-analyzer;
            path_lookup = true;
          };
        };
      };
    };
  };
}
