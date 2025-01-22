{
  powerManagement.enable = false;

  services.auto-cpufreq = {
    # enable = true;
    enable = false;
    settings = {
      battery = {
        governor = "powersave";
        turbo = "never";
      };
      charger = {
        governor = "performance";
        turbo = "auto";
      };
    };
  };
}
