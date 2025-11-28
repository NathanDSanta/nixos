{ config, pkgs, inputs, ...}:

let
  actions = config.lib.niri.actions;
in
{
  programs.niri.settings = {
    prefer-no-csd = true;

    spawn-at-startup = [{ command = [ "noctalia-shell" ]; }];
    
    outputs = {
      eDP-1 = {
        enable = true;
	scale = 2.0;
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
      HDMI-A-1 = {
        enable = true;
	focus-at-startup = true;
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
      DP-1 = {
        enable = true;
	scale = 1.0;
	transform.rotation = 0;
	mode = {
	  width = 1920;
	  height = 1080;
	};
	position = {
	  x = -3840;
	  y = 0;
	};
      };
    };

    binds = {
      "Mod+Shift+Slash".action = actions.show-hotkey-overlay;
      "Mod+Shift+E".action.quit.skip-confirmation = false;
      "Mod+Return" = {
        hotkey-overlay.title = "Open Terminal: alacritty";
        action.spawn = "alacritty";
      };
      "Mod+Left".action = actions.focus-column-or-monitor-left;
      "Mod+Right".action = actions.focus-column-or-monitor-right;
      "Mod+Down".action = actions.focus-window-or-workspace-down;
      "Mod+Up".action = actions.focus-window-or-workspace-up;

      "Mod+O".action = actions.toggle-overview;
      "Mod+F".action = actions.maximize-column;
      "Mod+C".action.spawn = "chromium";
    };
  };
}
