{config, lib, pkgs, inputs, ...}:

{
  programs.nixvim = {
    enable = true;

    globals.mapleader = " ";
    globals.maplocalleader = "\\";

    keymaps = [
      # Movement
      { mode = "v"; key = "<M-Up>";   action = ":m '<-2<CR>gv=gv"; options.desc = "Move current line up"; }
      { mode = "v"; key = "<M-Down>"; action = ":m '>+1<CR>gv=gv"; options.desc = "Move current line down"; }
      { mode = "v"; key = "<M-K>";    action = ":m '<-2<CR>gv=gv"; options.desc = "Move current line up"; }
      { mode = "v"; key = "<M-J>";    action = ":m '>+1<CR>gv=gv"; options.desc = "Move current line down"; }

      { mode = "n"; key = "<C-Up>";    action = "<C-w><C-k>"; options.desc = "Focus Up"; }
      { mode = "n"; key = "<C-Down>";  action = "<C-w><C-j>"; options.desc = "Focus Down"; }
      { mode = "n"; key = "<C-Left>";  action = "<C-w><C-h>"; options.desc = "Focus Left"; }
      { mode = "n"; key = "<C-Right>"; action = "<C-w><C-l>"; options.desc = "Focus Right"; }

      { mode = "n"; key = "<C-u>"; action = "<C-u>zz"; options.desc = "Keep cursor centered when moving up"; }
      { mode = "n"; key = "<C-d>"; action = "<C-d>zz"; options.desc = "Keep cursor centered when moving down"; }

      { mode = "n"; key = "n"; action = "nzzzv"; options.desc = "Keep cursor centered when going to next search"; }
      { mode = "n"; key = "N"; action = "Nzzzv"; options.desc = "Keep cursor centered when going to prev search"; }
      { mode = "n"; key = "J"; action = "mzJ`z"; options.desc = "Keep cursor in place when using J"; }

      # Deleting, copying, pasting
      { mode = "n"; key = "x"; action = "\"_x"; options.desc = "Do not copy when deleting with x"; }
      { mode = "x"; key = "<leader>p"; action = "\"_dP"; options.desc = "Keep copied value when pasting"; }

      # Direct
      { mode = [ "n" "v" ]; key = "<leader>y"; action = "\"+y"; options.desc = "Copy to system clipboard"; }
      { mode = "n"; key = "<C-k>"; action = ":NoiceDismiss<CR>"; options.desc = "Dismiss Noice Message"; }

      # Telescope
      { mode = "n"; key = "<leader>tf"; action = "<cmd>Telescope find_files<CR>"; options.desc = "Telescope find files"; }
      { mode = "n"; key = "<leader>tg"; action = "<cmd>Telescope live_grep<CR>"; options.desc = "Telescope live grep"; }
      { mode = "n"; key = "<leader>tb"; action = "<cmd>Telescope buffers<CR>"; options.desc = "Telescope buffers"; }
      { mode = "n"; key = "<leader>th"; action = "<cmd>Telescope help_tags<CR>"; options.desc = "Telescope help tags"; }
      { mode = "n"; key = "<leader>tq"; action = "<cmd>Telescope quickfix<CR>"; options.desc = "Telescope quickfix"; }
      { mode = "n"; key = "<leader>td"; action = "<cmd>Telescope diagnostics<CR>"; options.desc = "Telescope diagnostics"; }
      { mode = "n"; key = "<leader>tk"; action = "<cmd>Telescope keymaps<CR>"; options.desc = "Telescope keymaps"; }
      { mode = "n"; key = "<leader>tn"; action = ":Telescope noice<CR>"; options.desc = "Telescope Noice"; }
      { mode = "n"; key = "<leader>ts"; action = "<cmd>Telescope live_grep grep_open_files=true prompt_title='Live Grep in Open Files'<CR>"; options.desc = "Search in open files"; }
      { mode = "n"; key = "<leader>t/"; action = "<cmd>Telescope current_buffer_fuzzy_find<CR>"; options.desc = "Search in current buffer"; }

      # Oil
      { mode = "n"; key = "<leader>oo"; action = ":Oil<CR>"; options.desc = "Open Oil File Explorer"; }
      { mode = "n"; key = "<leader>of"; action = ":Oil --float<CR>"; options.desc = "Open Oil Float"; }

      # Buffer
      { mode = "n"; key = "<leader>be"; action = ":enew<CR>"; options.desc = "New Buffer"; }
      { mode = "n"; key = "<leader>bn"; action = ":bn<CR>"; options.desc = "Next Buffer"; }
      { mode = "n"; key = "<leader>bp"; action = ":bp<CR>"; options.desc = "Previous Buffer"; }
      { mode = "n"; key = "<leader>bc"; action = ":bd<CR>"; options.desc = "Close Buffer"; }
      { mode = "n"; key = "<leader>bs"; action = ":saveas "; options.desc = "Save Buffer As"; }
      { mode = [ "n" "v" ]; key = "<leader>bf"; action = ":BufferFormat<CR>"; options.desc = "Format buffer"; }
    ];
  };
}

