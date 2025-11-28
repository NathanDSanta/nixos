{config, lib, pkgs, inputs, ...}:

{
  imports = [
    inputs.stylix.homeModules.stylix
  ];

  home.packages = with pkgs [
    base16-schemes
    nerd-fonts.jetbrains-mono
    tela-circle-icon-theme
    catppuccin-cursor.mochaDark
  ];

   stylix = {
     enable = true;
     autoEnable = true;
     base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
     image = ./space.jpg;
     
     cursor = {
       enable = true;
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
         name = "JetBrainsMono Nerd Font Mono";
	 package = pkgs.nerd-fonts.jetbrains-mono;
       };
     };

     icons = {
       enable = true;
       dark = "tela-circle";
       light = "tela-circle";
       package = pkgs.tela-circle-icon-theme;
     };

   };
}
