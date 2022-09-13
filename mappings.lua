local M = {}

-- trying to disable default nvChad mappings I don't want
M.disabled = {
    n = {
        -- disable <leader>w delays when writing
        -- remapped to <leader>k for all keymaps
        ["<leader>wk"] = "",
        ["<leader>wK"] = "",

        -- remove stock nvChad binds for terminal
        ["<A-i>"] = "",
        ["<A-h>"] = "",
        ["<A-v>"] = "",
        ["<leader>h"] = "",
        ["<leader>v"] = "",

        -- let me move backwards please
        ["<S-b>"] = "",
    },
    t = {
        -- remove stock nvChad binds for terminal
        ["<A-i>"] = "",
        ["<A-h>"] = "",
        ["<A-v>"] = "",
    },
}

M.misc = {
   i = {
      -- easier escaping
      ["jk"] = { "<ESC>", "escape normal mode" },
      ["kj"] = { "<ESC>", "escape normal mode" },
   },

   n = {
      -- nvChad has workspaces on <leader>w, but I prefer to write with that
      ["<leader>w"] = { "<cmd> w <CR>", " write file"},

      -- find trouble
      ["<leader>ft"] = { "<cmd> TroubleToggle <CR>", "ﭭ Toggle Trouble" },

      -- run eslint fix, should I make this happen on save?
      ["<leader>fe"] = { "<cmd> EslintFixAll <CR>", " Eslint Fix All" },

	  -- toggle git status
      ["<leader>gg"] = { "<cmd> G <CR>", " Git Status" },

      -- toggle gitsigns gitblame
      ["<leader>gb"] = { "<cmd> Gitsigns toggle_current_line_blame <CR>", " Toggle Git Blame" },
      -- show changes not in git yet, in Trouble
      -- this works, but I don't understand it's purpose yet.
      ["<leader>gc"] = { "<cmd> Gitsigns setqflist <CR>", " Show Git Changes" },
      -- I'd like to add more github related actions here
      -- https://github.com/lewis6991/gitsigns.nvim

	  -- Focus with TrueZen
	  ["<leader>fz"] = { "<cmd> TZAtaraxis <CR>", " Focus Mode"}
   },
}

-- disabled standard whichkey mapping, but enabled it on <leader>k anyway
M.whichkey = {
   n = {
      ["<leader>k"] = {
         function()
            vim.cmd "WhichKey"
         end,
         "   which-key all keymaps",
      },
   }
}

M.nvterm = {
   t = {
      -- Can we navigate out of a terminal window like this?
      -- These don't seem to work
      ["<C-h>"] = { "<C-w>h", " window left" },
      ["<C-l>"] = { "<C-w>l", " window right" },
      ["<C-j>"] = { "<C-w>j", " window down" },
      ["<C-k>"] = { "<C-w>k", " window up" },

      -- toggle in terminal mode
      ["<C-f>"] = {
         function()
            require("nvterm.terminal").toggle "float"
         end,
         "   toggle floating term",
      },

      ["<C-m>"] = {
         function()
            require("nvterm.terminal").toggle "horizontal"
         end,
         "   toggle horizontal term",
      },

      ["<C-t>"] = {
         function()
            require("nvterm.terminal").toggle "vertical"
         end,
         "   toggle vertical term",
      },
   },

   n = {
      -- toggle in normal mode
      ["<C-f>"] = {
         function()
            require("nvterm.terminal").toggle "float"
         end,
         "   toggle floating term",
      },

      ["<C-m>"] = {
         function()
            require("nvterm.terminal").toggle "horizontal"
         end,
         "   toggle horizontal term",
      },

      ["<C-t>"] = {
         function()
            require("nvterm.terminal").toggle "vertical"
         end,
         "   toggle vertical term",
      },
   },
}

return M
