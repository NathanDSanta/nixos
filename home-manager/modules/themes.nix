{config, lib, pkgs, inputs, ...}:

{
  imports = [
    inputs.stylix.homeModules.stylix
  ];
#   gtk = {
#     enable = true;
#     theme = lib.mkForce {
#       name = "catppuccin-mocha";
#       package = pkgs.catppuccin-gtk.override{
#         variant = "mocha";
#	 accents = "mauve";
#       };
#     };
#   };  

   stylix = {
     enable = true;
     autoEnable = true;
     base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
     image = ./space.jpg;
     
     cursor = {
       name = "catppuccin-cursors";
       package = pkgs.catppuccin-cursors.mochaDark; 
       size = 24;
     };
      
     fonts = {
       sizes = {
         applications = 13;
	 desktop = 13;
         terminal = 13;
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
