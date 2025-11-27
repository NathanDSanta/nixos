{config, pkgs, inputs, ...}:

{
    programs.zsh = {
      enable = true;
      oh-my-zsh = {
        enable = true;
        plugins = [
	  pkgs.zsh-autosuggestions
	  pkgs.zsh-autocomplete
	  pkgs.zsk-syntax-highlighting
        ];
      };

      
      shellAliases = {
        rebuild-nix = "sudo nixos-rebuild switch --flake ~/.nixos/nixos#personal";
        rebuild-home = "home-manager switch --flake ~/.nixos/home-manager";
      };
    };
}
