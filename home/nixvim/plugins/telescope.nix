{
  plugins = {
    telescope = {
      enable = true;
      extensions = {
        fzf-native.enable = true;
        ui-select.enable = true;
      };
      settings.pickers = {
        find_files = {
          hidden = true;
          file_ignore_patterns = ["%.git/.*"];
        };
      };
      keymaps = {
        "<Leader>ff" = {
          action = "find_files";
          options = {
            desc = "Find files";
          };
        };
        "<Leader>ft" = {
          action = "live_grep";
          options = {
            desc = "Find text";
          };
        };
        "<Leader>fb" = {
          action = "buffers";
          options = {
            desc = "Change buffer";
          };
        };
        "<Leader>fc" = {
          action = "colorscheme";
          options = {
            desc = "Change colorscheme";
          };
        };
        "<Leader>fd" = {
          action = "diagnostics";
          options = {
            desc = "List diagnostics for all open buffers";
          };
        };
        "<Leader>fk" = {
          action = "keymaps";
          options = {
            desc = "List keymaps";
          };
        };
        "<Leader>fm" = {
          action = "man_pages";
          options = {
            desc = "Find man page";
          };
        };
      };
    };
  };
}
