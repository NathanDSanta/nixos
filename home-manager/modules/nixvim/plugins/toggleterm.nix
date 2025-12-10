{...}: {
  programs.nixvim.plugins.toggleterm = {
    enable = true;
    settings = {
      direction = "float";
      open_mapping = "[[<leader>tt]]";
      float_opts = {
        border = "curved";
      };
    };
  };
}
