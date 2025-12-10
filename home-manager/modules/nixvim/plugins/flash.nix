{...}: {
  programs.nixvim = {
    plugins.flash.enable = true;

    keymaps = [
      {
        key = "s";
        mode = ["n" "x" "o"];
        action = "<cmd>lua require('flash').jump()<CR>";
      }
      {
        key = "S";
        mode = ["n" "x" "o"];
        action = "<cmd>lua require('flash').treesitter()<CR>";
      }
      {
        key = "r";
        mode = ["o"];
        action = "<cmd>lua require('flash').remote()<CR>";
      }
      {
        key = "R";
        mode = ["o" "x"];
        action = "<cmd>lua require('flash').treesitter_search()<CR>";
      }
      {
        key = "<C-s>";
        mode = ["c"];
        action = "<cmd>lua require('flash').toggle()<CR>";
      }
    ];
  };
}
