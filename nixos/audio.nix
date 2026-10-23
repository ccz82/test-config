{
  services = {
    pipewire = {
      enable = true;
      pulse.enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      extraConfig.pipewire."99-highres" = {
        "context.properties" = {
          "default.clock.rate" = 44100;
          "default.clock.allowed-rates" = [44100 48000 88200 96000 176400 192000 352800 384000];
        };
      };
      extraConfig.pipewire."99-sonobus-virtual-mic" = {
        "context.modules" = [
          {
            name = "libpipewire-module-loopback";
            args = {
              "node.description" = "Sonobus Virtual Mic";
              "capture.props" = {
                "node.name" = "sonobus_virt_sink";
                "media.class" = "Audio/Sink";
                "audio.position" = ["FL" "FR"];
              };
              "playback.props" = {
                "node.name" = "sonobus_virt_source";
                "media.class" = "Audio/Source";
                "audio.position" = ["FL" "FR"];
                "node.passive" = true;
              };
            };
          }
        ];
      };
    };
  };
}
