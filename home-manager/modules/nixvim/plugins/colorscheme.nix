{config, lib, pkgs, inputs, ...}:
{
  programs.nixvim = {
    enable = true;

    colorschemes.catppuccin = {
      enable = true;

      settings = {
        flavour = "mocha";
			  transparent_background = true;
			  show_end_of_buffer = false;
			  integrations = {
				  blink_cmp = {
					  style = "bordered";
				  };
				  notify = true;
				  fzf = true;
				  leap = true;
				  noice = true;
				  rainbow_delimiters = true;
				  telescope = {
					  enabled = true;
				  };
			  };
      };
    };

  };
}

