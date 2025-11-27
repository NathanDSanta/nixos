{ config, pkgs, inputs, ... }:

{

  imports = [
    ./modules/niri.nix	
    ./modules/zsh.nix
    inputs.niri.homeModules.niri
    inputs.nixvim.homeModules.nixvim
    inputs.stylix.homeModules.stylix
  ];

  home.username = "NathanDSanta";
  home.homeDirectory = "/home/NathanDSanta";

  home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = [
    pkgs.hello
    pkgs.fzf
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
  };

   stylix = {
     enable = true;
     autoEnable = true;
     base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
     fonts = {
       monospace = { 
         name = "JetBrains Mono Nerd Font";
       };
     };
   };


}
