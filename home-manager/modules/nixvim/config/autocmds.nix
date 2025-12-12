{...}: {
  programs.nixvim.autoCmd = [
    {
      callback = {
        __raw = "function() vim.highlight.on_yank() end";
      };
      desc = "highlight when yanking text";
      event = ["TextYankPost"];
      group = "highlightYank";
    }
  ];
}
