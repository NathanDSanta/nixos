{ config, pkgs, inputs, ... }:

{

  imports = [
    ./modules/niri.nix	
    inputs.niri.homeModules.niri
    inputs.nixvim.homeModules.nixvim
    inputs.stylix.homeModules.stylix
  ];

  home.username = "NathanDSanta";
  home.homeDirectory = "/home/NathanDSanta";

  home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = [
    pkgs.hello
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
      
      shellAliases = {
        rebuild-nix = "sudo nixos-rebuid switch --flake ~/.nixos/nixos#personal";
        rebuild-home = "home-manager switch --flake ~/.nixos/home-manager";
      };
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
