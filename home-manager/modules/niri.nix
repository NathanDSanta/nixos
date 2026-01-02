{config, ...}: {
  programs.niri.settings = {
    prefer-no-csd = true;
    spawn-at-startup = [{command = ["noctalia-shell"];}];

    input = {
      warp-mouse-to-focus.enable = true;
    };

    outputs = {
      HDMI-A-5 = {
        enable = true;
        scale = 1.0;
        transform.rotation = 0;
        mode = {
          width = 1920;
          height = 1080;
        };
        position = {
          x = -1920;
          y = 0;
        };
      };
      DP-5 = {
        enable = true;
        focus-at-startup = true;
        scale = 1.0;
        transform.rotation = 0;
        mode = {
          width = 1920;
          height = 1080;
        };
        position = {
          x = 0;
          y = 0;
        };
      };
    };

    layout = {
      gaps = 15;
      struts = {
        left = 30;
        right = 30;
        top = 0;
        bottom = 0;
      };
      shadow = {
        enable = true;
        offset = {
          x = 0;
          y = 0;
        };
      };

      focus-ring = {width = 2;};
      preset-column-widths = [
        {proportion = 1. / 3.;}
        {proportion = 1. / 2.;}
        {proportion = 2. / 3.;}
      ];
      center-focused-column = "on-overflow";
    };

    layer-rules = [
      {
        matches = [{namespace = "^wallpaper$";}];
        place-within-backdrop = true;
      }
    ];

    hotkey-overlay = {
      hide-not-bound = true;
      skip-at-startup = true;
    };

    binds = with config.lib.niri.actions; {
      "Mod+Shift+Slash".action = show-hotkey-overlay;
      "Mod+Shift+E".action.quit.skip-confirmation = false;

      ## MOVEMENT ##
      "Mod+Left".action = focus-column-or-monitor-left;
      "Mod+Right".action = focus-column-or-monitor-right;
      "Mod+Down".action = focus-window-or-workspace-down;
      "Mod+Up".action = focus-window-or-workspace-up;

      "Mod+Shift+Left".action = move-column-left-or-to-monitor-left;
      "Mod+Shift+Right".action = move-column-right-or-to-monitor-right;
      "Mod+Shift+Down".action = move-window-down-or-to-workspace-down;
      "Mod+Shift+Up".action = move-window-up-or-to-workspace-up;

      "Mod+Home".action = focus-monitor-left;
      "Mod+End".action = focus-monitor-right;
      "Mod+Page_Down".action = focus-workspace-down;
      "Mod+Page_Up".action = focus-workspace-up;

      "Mod+Shift+Home".action = move-column-to-monitor-left;
      "Mod+Shift+End".action = move-column-to-monitor-right;
      "Mod+Shift+Page_Down".action = move-window-to-workspace-down;
      "Mod+Shift+Page_Up".action = move-window-to-workspace-up;

      ## WINDOW MANAGEMENT ##
      "Mod+O".action = toggle-overview;

      "Mod+F".action = maximize-column;
      "Mod+Shift+F".action = fullscreen-window;

      "Mod+V".action = toggle-window-floating;
      "Mod+Shift+V".action = switch-focus-between-floating-and-tiling;

      "Mod+W".action = close-window;
      "Mod+S".action = switch-preset-window-width;

      ## APPS ##
      "Mod+Return" = {
        hotkey-overlay.title = "Open terminal: kitty";
        action.spawn = "kitty";
      };
      "Mod+B" = {
        hotkey-overlay.title = "Launch browser: chromium";
        action.spawn = "chromium";
      };
      "Mod+R" = {
        hotkey-overlay.title = "Launch app launcher";
        action.spawn = ["noctalia-shell" "ipc" "call" "launcher" "toggle"];
      };
    };
  };
}
