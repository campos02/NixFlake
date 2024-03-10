{
  "env" = [
    "XCURSOR_SIZE,24"
    "LIBVA_DRIVER_NAME,nvidia"
    "XDG_SESSION_TYPE,wayland"
    "GBM_BACKEND,nvidia-drm"
    "__GLX_VENDOR_LIBRARY_NAME,nvidia"
    "WLR_NO_HARDWARE_CURSORS,1"
  ];

  "$mod" = "SUPER";

  exec-once = [
    "hyprpaper"
    "waybar"
  ];

  monitor = ",preferred,auto,auto";

  windowrulev2 = [
    "float, title:^(Picture-in-Picture)$"
    "pin, title:^(Picture-in-Picture)$"
    "move 67% 72%, title:^(Picture-in-Picture)$"
    "size 33% 28%, title:^(Picture-in-Picture)$"
  ];

  input = {
    kb_layout = "br";
    follow_mouse = 1;
    touchpad.natural_scroll = "no";
    sensitivity = 0;
    numlock_by_default = true;
  };

  general = {
    gaps_in = 5;
    gaps_out = 10;
    border_size = 2;

    "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
    "col.inactive_border" = "rgba(595959aa)";

    layout = "dwindle";
  };

  decoration = {
    rounding = 5;
    
    blur = {
      enabled = true;
      size = 3;
      passes = 1;
      new_optimizations = 1;
    };

    drop_shadow = "yes";
    shadow_range = 4;
    shadow_render_power = 3;
    "col.shadow" = "rgba(1a1a1aee)";
  };

  animations = {
    enabled = true;
    animation = [
      "windows, 1, 7, default"
      "windowsOut, 1, 7, default, popin 80%"
      "border, 1, 10, default"
      "borderangle, 1, 8, default"
      "fade, 1, 7, default"
      "workspaces, 1, 6, default"
    ];
  };

  dwindle = {
    pseudotile = true;
    preserve_split = "yes";
  };

  master = {
    new_is_master = true;
  };

  gestures = {
    workspace_swipe = false;
  };

  misc = {
    force_default_wallpaper = 0;
  };

  "general:resize_on_border" = "true";

  bindm = [
    # mouse binds
    "ALT,mouse:272,movewindow"
  ];

  binde = [
    # volume controls
    ", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+"
    ", XF86AudioLowerVolume, exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%-"
  ];

  bind = [
    # mute key
    ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"

    # general shortcuts
    "$mod, Q, exec, kitty"
    "$mod, C, killactive, "
    "$mod, M, exit, "
    "$mod, V, togglefloating, "
    "$mod, P, pseudo,"
    "$mod, J, togglesplit,"

    "$mod, E, exec, wlogout -p layer-shell"

    # move windows
    "$mod SHIFT, J, movewindow, l"
    "$mod SHIFT, L, movewindow, r"
    "$mod SHIFT, I, movewindow, u"
    "$mod SHIFT, k, movewindow, d"

    # screenshot
    ", Print, exec, grim - | wl-copy"
    "SHIFT, Print, exec, grim -l 9 -g \"$(slurp)\" - | wl-copy"

    # wofi
    "$mod, D, exec, wofi --show drun"

    # workspace scroll
    "$mod, mouse_down, workspace, e+1"

    # move active window to workspace
    "$mod SHIFT, 1, movetoworkspace, 1"
    "$mod SHIFT, 2, movetoworkspace, 2"
    "$mod SHIFT, 3, movetoworkspace, 3"
    "$mod SHIFT, 4, movetoworkspace, 4"
    "$mod SHIFT, 5, movetoworkspace, 5"
    "$mod SHIFT, 6, movetoworkspace, 6"
    "$mod SHIFT, 7, movetoworkspace, 7"
    "$mod SHIFT, 8, movetoworkspace, 8"
    "$mod SHIFT, 9, movetoworkspace, 9"
    "$mod SHIFT, 0, movetoworkspace, 10"

    # switch workspace
    "$mod, 1, workspace, 1"
    "$mod, 2, workspace, 2"
    "$mod, 3, workspace, 3"
    "$mod, 4, workspace, 4"
    "$mod, 5, workspace, 5"
    "$mod, 6, workspace, 6"
    "$mod, 7, workspace, 7"
    "$mod, 8, workspace, 8"
    "$mod, 9, workspace, 9"
    "$mod, 0, workspace, 10"

    # move window focus
    "$mod, left, movefocus, l"
    "$mod, right, movefocus, r"
    "$mod, up, movefocus, u"
    "$mod, down, movefocus, d"
  ];
}