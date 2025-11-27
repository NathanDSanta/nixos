{config, pkgs, inputs, ...}:

{
    programs.zsh = {
      enable = true;
      oh-my-zsh = {
        enable = true;
	plugins = [
	  "sudo"
	];
      };
      plugins = [
	{
	  name = "zsh-autosuggestions"; 
	  src = pkgs.zsh-autosuggestions;
	}
	{
	  name = "zsh-autocomplete"; 
	  src = pkgs.zsh-autocomplete;
	}
	{
	  name = "zsh-syntax-highlighting"; 
	  src = pkgs.zsh-syntax-highlighting;
	}
	{
	  name = "fzf-tab"; 
	  src = pkgs.zsh-fzf-tab;
	}
      ];

      
      shellAliases = {
        rebuild-nix = "sudo nixos-rebuild switch --flake ~/.nixos/nixos#personal";
        rebuild-home = "home-manager switch --flake ~/.nixos/home-manager";
      };
    };
}
