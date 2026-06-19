{pkgs, ...}: {
  services.hardware.openrgb.enable = false;
  services.hardware.openrgb.package = pkgs.openrgb-with-all-plugins;
}
