{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.stylix.homeModules.stylix
    inputs.niri.homeModules.stylix
  ];

  home.packages = with pkgs; [
    base16-schemes
    nerd-fonts.jetbrains-mono
    tela-circle-icon-theme
    catppuccin-cursors.mochaDark
  ];

  stylix = {
    enable = true;
    autoEnable = true;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";

    cursor = {
      name = "catppuccin-cursors";
      package = pkgs.catppuccin-cursors.mochaDark;
      size = 24;
    };

    fonts = {
      sizes = {
        applications = 10;
        desktop = 10;
        terminal = 10;
        popups = 10;
      };

      monospace = {
        name = "JetBrainsMono Nerd Font";
        package = pkgs.nerd-fonts.jetbrains-mono;
      };
      serif = config.stylix.fonts.monospace;
      sansSerif = config.stylix.fonts.monospace;
      emoji = config.stylix.fonts.monospace;
    };

    icons = {
      enable = true;
      dark = "tela-circle";
      light = "tela-circle";
      package = pkgs.tela-circle-icon-theme;
    };

    targets.zen-browser.profileNames = ["default"];

    targets.nixvim.enable = false;
  };
}
