{...}: {
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
          treesitter = true;
          noice = true;
          rainbow_delimiters = true;
          telescope = {
            enabled = true;
          };
        };
      };
    };

    extraConfigLua = ''
      local mocha = require("catppuccin.palettes").get_palette("mocha")

      vim.api.nvim_set_hl(0, "LineNrAbove", { fg = mocha.mauve, bold = false })
      vim.api.nvim_set_hl(0, "LineNr", { fg = mocha.mauve, bold = true })
      vim.api.nvim_set_hl(0, "LineNrBelow", { fg = mocha.mauve, bold = false })
    '';
  };
}
