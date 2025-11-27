{ config, pkgs, inputs, ... }:

let
  actions = config.lib.niri.actions;
in
{
  imports = [
    inputs.nixvim.homeModules.nixvim
  ];

  home.username = "NathanDSanta";
  home.homeDirectory = "/home/NathanDSanta";

  home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = [
    pkgs.hello
    pkgs.modrinth-app
  ];

  home.file = {
  };

  home.sessionVariables = {
  };

  programs = {
    home-manager.enable = true;

    nixvim = {
      enable = true;
    };

    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
    };
  };

  programs.niri.settings = {
    prefer-no-csd = true;
    binds = {
      "Mod+Shift+E".action.quit.skip-confirmation = false;
      "Mod+Return" = {
        hotkey-overlay.title = "Open Terminal: foot";
        action.spawn = "foot";
      };
      "Mod+Left".action = actions.focus-column-or-monitor-left;
      "Mod+Right".action = actions.focus-column-or-monitor-right;
      "Mod+Down".action = actions.focus-window-or-workspace-down;
      "Mod+Up".action = actions.focus-window-or-workspace-up;

      "Mod+O".action = actions.toggle-overview;
      "Mod+C".action.spawn = "chromium";
    };
  };

}
