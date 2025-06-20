{
  networking.nameservers = ["1.1.1.1" "8.8.8.8"];
  networking.wireless.iwd.enable = true;
  networking.wireless.iwd.settings = {
    Security = {
      EAP-Method = "PEAP";
      EAP-Identity = "anonymous@nyp.edu.sg";
      EAP-PEAP-Phase2-Method = "MSCHAPV2";
    };
    Settings = {
      AutoConnect = true;
    };
  };
}
