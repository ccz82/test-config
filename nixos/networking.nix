{
  networking.networkmanager.enable = true;
  networking.nameservers = ["1.1.1.1" "8.8.8.8"];
  networking.firewall.enable = true;
  networking.firewall.allowedUDPPorts = [4242];
  networking.firewall.allowedTCPPorts = [4242];
  services.resolved.enable = true;
}
