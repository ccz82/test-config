{
  inputs,
  lib,
  hostname,
  ...
}: {
  imports = [inputs.lan-mouse.homeManagerModules.default];

  programs.lan-mouse = {
    enable = true;
    settings = {
      authorized_fingerprints = lib.mkMerge [
        (lib.mkIf (hostname == "zenbook") {
          "14:c9:eb:5a:f9:08:46:4a:29:c0:35:24:95:1b:54:59:60:d2:cb:14:6c:30:80:22:72:37:9c:68:92:42:df:10" = "ccz-desktop";
        })
        (lib.mkIf (hostname == "ccz-desktop") {
          "03:dd:c1:92:fb:8e:8e:72:40:36:b5:2a:12:ab:73:0b:ad:3a:14:86:b3:b0:1a:8a:ae:05:04:fb:2d:f9:a8:2f" = "zenbook";
        })
      ];
      clients = [
        (lib.mkIf
          (hostname == "zenbook")
          {
            position = "right";
            hostname = "ccz-desktop";
            ips = ["192.168.0.116"];
            activate_on_startup = true;
          })
        (lib.mkIf
          (hostname == "ccz-desktop")
          {
            position = "left";
            hostname = "zenbook";
            ips = ["192.168.0.124"];
            activate_on_startup = true;
          })
      ];
    };
  };
}
