local hop = require "hop"
local directions = require("hop.hint").HintDirection

return {
  n = {
    ["<leader><leader>v"] = {
      "<cmd>:VenvSelect<cr>",
      desc = "Select Virtual environment",
    },
    ["<leader><leader>cl"] = {
      "<cmd>TodoLocList<cr>",
      desc = "Show special comment list panel",
    },
    ["<leader><leader>cs"] = {
      "<cmd>TodoTelescope<cr>",
      desc = "Search in telescope by special comments",
    },
    ["<leader><leader>tc"] = {
      "<cmd>TodoTrouble<cr>",
      desc = "Toggle todo-comments trouble panel",
    },
    ["<leader><leader>tt"] = {
      "<cmd>TroubleToggle<cr>",
      desc = "Toggle general trouble panel",
    },
    ["<leader><leader>k"] = {
      "<cmd>lua vim.diagnostic.open_float()<CR>",
      desc = "LSP message detail",
    },
    ["<leader><leader>w"] = {
      function()
        hop.hint_words {
          direction = directions.AFTER_CURSOR,
          current_line_only = false,
        }
      end,
      desc = "Jump ahead to word start",
    },
    ["<leader><leader>b"] = {
      function()
        hop.hint_words {
          direction = directions.BEFORE_CURSOR,
          current_line_only = false,
        }
      end,
      desc = "Jump back to word start",
    },
    ["<leader><leader>s"] = {
      function()
        hop.hint_char1 {
          direction = directions.AFTER_CURSOR,
          current_line_only = false,
        }
      end,
      desc = "Jump ahead to specific char",
    },
    ["<leader><leader>S"] = {
      function()
        hop.hint_char1 {
          direction = directions.BEFORE_CURSOR,
          current_line_only = false,
        }
      end,
      desc = "Jump back to specific char",
    },
    ["<leader><leader>p"] = {
      function()
        hop.hint_patterns {
          direction = directions.AFTER_CURSOR,
          current_line_only = false,
        }
      end,
      desc = "Jump ahead to pattern",
    },
    ["<leader><leader>P"] = {
      function()
        hop.hint_patterns {
          direction = directions.BEFORE_CURSOR,
          current_line_only = false,
        }
      end,
      desc = "Jump back to pattern",
    },
  },
  t = {},
}
