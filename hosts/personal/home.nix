{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.nixvim.homeModules.nixvim
  ];

  home.username = "NathanDSanta";
  home.homeDirectory = "/home/NathanDSanta";

  home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = [
    pkgs.hello
    pkgs.zsh
  ];

  home.file = {
  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;

  programs.nixvim = {
    enable = true;
  };

  programs.niri.settings = {
    prefer-no-csd = true;
    binds = {
      "Mod+Shift+E".action.quit.skip-confirmation = false;
      "Mod+Return" = {
        hotkey-overlay.title = "Open Terminal: foot";
        action.spawn = "foot";
      };
    };
  };

  xdg.desktopEntries.niri = {
    name = "Niri";
    comment = "Log In using Niri";
    genericName = "Niri";
    exec = "${pkgs.niri}/bin/niri --session";
    type = "Application";
  };
}
