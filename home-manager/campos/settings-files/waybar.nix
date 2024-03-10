{
  mainBar = {
    layer = "top";
    position = "top";
    height = 27;
    fixed-center = true;
    
    modules-left = [
      "hyprland/workspaces"
      "custom/song"
    ];

    modules-center = [
      "clock"
    ];

    modules-right = [
      "pulseaudio"
      "network"
      "tray"
    ];

    "custon/sep_r" = {
      format = " ";
    };

    "custom/sep" = {
      format = " ";
    };

    "custom/sep_l" = {
      format = " ";
    };

    "wlr/workspaces" = {
      disable-scroll = false;
      all-outputs = false;
      format = "{icon}";
      active-only = false;
    };

    "hyprland/language" = {
      format = "{}";
      format-tr = "TR";
    };

    "hyprland/window" = {
      format = "{}";
      seperate-outputs = true;
    };

    "keyboard-state" = {
      interval = 1;
      numlock = false;
      capslock = false;
      format = "{icon}";
      format-icons = {
        "locked" = " ";
        "unlocked" = "";
      };
    };

    "idle_inhibitor" = {
      format = "{icon}";
      format-icons = {
        "activated" = "";
        "deactivated" = "";
      };
    };

    "tray" = {
      icon-size = 16;
      spacing = 6;
    };

    "clock" = {
      timezone = "America/Sao_Paulo";
      format = "{:  %H:%M %d/%m/%Y  }";
      tooltip-format = "<tt><big>{calendar}</big></tt>";
      
      calendar = {
        format = {
          today = "<b><i>{}</i></b>";
        };
      };
    };

    "cpu" = {
      format = " {usage}%";
      tooltip = false;
    };

    "memory" = {
      format = " {}%";
    };

    "battery" = {
      states = {
        "good" = 80;
        "warning" = 30;
        "critical" = 5;
      };
      format = "{icon}{capacity}%  ";
      format-charging = " {capacity}%  ";
      format-plugged = " {capacity}%  ";
      format-alt = "{icon}{time}";
      format-icoms = ["  " "  " "  " "  " "  "];
    };

    "network" = {
      format-wifi = "  Connected: {ipaddr}/{cidr}";
      format-ethernet = "  Connected: {ipaddr}/{cidr}";
      format-disconnected = "  Disconnected";
      tooltip-format-wifi = "{essid} | Signal Strenght: {signalStrength}% | Down Speed: {bandwidthDownBits}, Up Speed: {bandwidthUpBits}";
      tooltip-format = "{ifname} via {gwaddr} ";
      tooltip-format-ethernet = "{ipaddr}  ";
      format-linked = "{ifname} (No IP) ";
    };

    "pulseaudio" = {
      on-click = "pavucontrol";
      format = "{icon}{volume}%";
      format-icons = {
        "default" = [" " " " " "];
      };
    };

    "disk" = {
      interval = 90;
      format = " {free} (/)";
      tooltip-format = "{used} / {total} ({percentage_used}%)";
      path = "/";
    };

    "custom/power" = {
      format = " ";
      on-click = "wlogout";
    };

    "custom/song" = {
      format = "{}";
      exec = "playerctl -a metadata --format \"{{ status }}: {{ artist }} - {{ trunc(title, 38) }} - {{ duration(position) }}\"";
      max-length = 60;
      interval = 1;
    };
  };
}

