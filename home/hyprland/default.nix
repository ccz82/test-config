{pkgs, ...}: {
  home.packages = with pkgs; [
    hyprshot
    hyprpicker
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings."$mod" = "ALT";
  };
  imports = [
    ./xdph.nix
    ./hypridle.nix
    ./hyprlock.nix
    ./hyprpolkitagent.nix
    ./settings/general.nix
    ./settings/misc.nix
    ./settings/monitor.nix
    ./settings/input.nix
    ./settings/gestures.nix
    ./settings/decoration.nix
    ./settings/animations.nix
    ./settings/bind.nix
    ./settings/bindl.nix
    ./settings/bindel.nix
    ./settings/bindm.nix
    ./settings/exec-once.nix
    ./settings/layerrule.nix
    ./settings/windowrulev2.nix
    ./settings/xwayland.nix
    # NOTE: This is a workaround for submap
    ./settings/resize.nix
  ];
}
