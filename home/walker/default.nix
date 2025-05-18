{
  pkgs,
  inputs,
  ...
}: {
  imports = [inputs.walker.homeManagerModules.default];

  home.packages = [
    inputs.iwmenu.packages.${pkgs.system}.default
    inputs.bzmenu.packages.${pkgs.system}.default
  ];

  programs.walker = {
    enable = true;
    runAsService = true;
    config = {
      search.placeholder = "start typing...";
      websearch.prefix = "?";
      switcher.prefix = "/";
    };
    # style = ;
  };
}
