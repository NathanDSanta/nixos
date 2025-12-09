{config, pkgs, inputs, ...}:

{
  programs.nixvim = {
    opts = {
      # Line numbers
      number = true;
      relativenumber = true;

      # Indentation
      tabstop = 2;
      softtabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      smarttab = true;
      smartindent = true;
      autoindent = true;
      breakindent = true;

      # Text wrap
      wrap = false;

      # File
      swapfile = false;
      backup = false;
      undodir = "${builtins.getEnv "HOME"}/.nvim/undodir";
      undofile = true;

      # Search
      hlsearch = true;
      incsearch = true;
      ignorecase = true;
      smartcase = true;
      inccommand = "split";

      # Colors
      termguicolors = true;

      # Scroll
      scrolloff = 9;
      signcolumn = "yes";

      # To make the editor feel more responsive, supposedly
      updatetime = 250;

      # Splits
      splitright = true;
      splitbelow = true;

      # Whitespaces
      listchars = { trail = "·"; };

      sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions";

    };
  };
}
