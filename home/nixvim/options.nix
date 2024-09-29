{ ... }:

{ programs.nixvim.opts = {
      mouse = "";
      swapfile = false;
      wrap = false;
      showmode = false;
      number = true;
      cursorline = true;
      signcolumn = "yes";
      completeopt = [
        "menu"
        "menuone"
        "noselect"
      ];
      termguicolors = true;
      expandtab = true;
      tabstop = 2;
      softtabstop = 2;
      shiftwidth = 2;
      autoindent = true;
      smartindent = true;

      clipboard = {
        providers = {
          wl-copy.enable = true;
        };

        register = "unnamedplus";
      };
    };
}
