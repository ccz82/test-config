{
  stylix.targets.waybar.enable = false;

  programs.waybar = {
    enable = true;
    settings = [
      {
        layer = "top";
        position = "top";

        modules-left = [
          "group/power"
          "hyprland/workspaces"
        ];
        modules-center = [];
        modules-right = [
          "group/network"
          "battery"
          "clock"
        ];

        "hyprland/workspaces" = {
          format = "{icon}";
          format-icons = {
            default = "󰄰";
            active = "󰄯";
            urgent = "󰀨";
          };
        };

        "group/power" = {
          orientation = "inherit";
          drawer = {
            transition-duration = 300;
          };
          modules = [
            "custom/nix"
            "custom/quit"
            "custom/lock"
            "custom/sleep"
            "custom/hibernate"
            "custom/reboot"
            "custom/shutdown"
          ];
        };

        "custom/nix" = {
          format = "󱄅";
          tooltip = false;
        };

        "custom/quit" = {
          format = "󰗽";
          tooltip = false;
          on-click = "hyprctl dispatch exit";
        };

        "custom/lock" = {
          format = "󰍁";
          tooltip = false;
          on-click = "hyprlock";
        };

        "custom/sleep" = {
          format = "󰤄";
          tooltip = false;
          on-click = "systemctl sleep";
        };

        "custom/hibernate" = {
          format = "󰤁";
          tooltip = false;
          on-click = "systemctl hibernate";
        };

        "custom/reboot" = {
          format = "󰜉";
          tooltip = false;
          on-click = "reboot";
        };

        "custom/shutdown" = {
          format = "󰐥";
          tooltip = false;
          on-click = "shutdown now";
        };

        "group/network" = {
          orientation = "inherit";
          drawer = {
            transition-duration = 300;
          };
          modules = [
            "network#icon"
            "network#text"
          ];
        };

        "network#icon" = {
          format = "{icon}";
          format-icons = {
            wifi = [
              "󰤟"
              "󰤢"
              "󰤥"
              "󰤨"
            ];
            disconnected = "󰤫";
            ethernet = "󰈀";
            disabled = "󰀦";
          };
          tooltip = false;
        };

        "network#text" = {
          format = "{essid}";
          tooltip = false;
        };

        battery = {
          format = "{icon}  {capacity}%";
          format-icons = {
            discharging = [
              "󰁺"
              "󰁻"
              "󰁼"
              "󰁽"
              "󰁾"
              "󰁿"
              "󰂀"
              "󰂁"
              "󰂂"
              "󰁹"
            ];
            charging = [
              "󰢜"
              "󰂆"
              "󰂇"
              "󰂈"
              "󰢝"
              "󰂉"
              "󰢞"
              "󰂊"
              "󰂋"
              "󰂅"
            ];
          };
          tooltip = false;
        };

        "clock" = {
          format = "{:%a, %e %b %H:%M}";
          tooltip = false;
        };
      }
    ];
    style = ./style.css;
  };
}
