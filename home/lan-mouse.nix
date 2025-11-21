{inputs, ...}: {
  imports = [inputs.lan-mouse.homeManagerModules.default];

  programs.lan-mouse = {
    enable = true;
    settings = {
      authorized_fingerprints = {
        "3b:65:ef:86:d8:43:88:6a:65:ee:17:30:42:ef:6d:c9:69:76:31:2d:56:58:02:7e:a2:b3:cc:7c:e9:9f:45:a4" = "ccz-desktop";
      };
      clients = [
        {
          position = "right";
          hostname = "ccz-desktop";
          ips = ["192.168.0.116"];
          activate_on_startup = true;
        }
      ];
    };
  };
}
