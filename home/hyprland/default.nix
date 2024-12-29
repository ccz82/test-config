{pkgs, ...}: {
  wayland.windowManager.hyprland = {
    enable = true;
    plugins = with pkgs.hyprlandPlugins; [hy3];
    settings."$mod" = "ALT";
  };
  imports = [
    ./hypridle.nix
    ./hyprlock.nix
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
    ./settings/windowrule.nix
    ./settings/windowrulev2.nix
    ./settings/xwayland.nix
    ./settings/hy3.nix
  ];
}
