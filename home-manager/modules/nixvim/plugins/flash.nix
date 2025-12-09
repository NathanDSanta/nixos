{config, pkgs, inputs, ...}:

{
  programs.nixvim = {
    enable = true;

    plugins.flash = {
      enable = true;
      settings = { };
    };

    keymaps = [
      {
        key = "s";
        mode = [ "n" "x" "o" ];
        action = ''require("flash").jump()'';
        desc = "Flash";
      }
      {
        key = "S";
        mode = [ "n" "x" "o" ];
        action = ''require("flash").treesitter()'';
        desc = "Flash Treesitter";
      }
      {
        key = "r";
        mode = [ "o" ];
        action = ''require("flash").remote()'';
        desc = "Remote Flash";
      }
      {
        key = "R";
        mode = [ "o" "x" ];
        action = ''require("flash").treesitter_search()'';
        desc = "Treesitter Search";
      }
      {
        key = "<C-s>";
        mode = [ "c" ];
        action = ''require("flash").toggle()'';
        desc = "Toggle Flash Search";
      }
    ];
  };
}

