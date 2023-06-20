local hop = require "hop"
local directions = require("hop.hint").HintDirection
local utils = require "astronvim.utils"

local custom_mapping_icon = utils.get_icon "DiagnosticHint"
local jump_icon = utils.get_icon "ArrowRight"
local trouble_icon = utils.get_icon "DiagnosticWarn"
local comment_icon = utils.get_icon "Spellcheck"

return {
  n = {
    ["<leader><leader>"] = { desc = custom_mapping_icon .. " custom mappings" },
    ["<leader><leader>v"] = {
      "<cmd>:VenvSelect<cr>",
      desc = "Select Virtual environment",
    },
    ["<leader><leader>c"] = { desc = comment_icon .. " special comments" },
    ["<leader><leader>cl"] = {
      "<cmd>TodoLocList<cr>",
      desc = "Show special comment list panel",
    },
    ["<leader><leader>cs"] = {
      "<cmd>TodoTelescope<cr>",
      desc = "Search in telescope by special comments",
    },
    ["<leader><leader>t"] = { desc = trouble_icon .. " trouble panel" },
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
    ["<leader><leader>j"] = { desc = jump_icon .. " jump" },
    ["<leader><leader>jw"] = {
      function()
        hop.hint_words {
          direction = directions.AFTER_CURSOR,
          current_line_only = false,
        }
      end,
      desc = "Jump ahead to word start",
    },
    ["<leader><leader>jb"] = {
      function()
        hop.hint_words {
          direction = directions.BEFORE_CURSOR,
          current_line_only = false,
        }
      end,
      desc = "Jump back to word start",
    },
    ["<leader><leader>js"] = {
      function()
        hop.hint_char1 {
          direction = directions.AFTER_CURSOR,
          current_line_only = false,
        }
      end,
      desc = "Jump ahead to specific char",
    },
    ["<leader><leader>jS"] = {
      function()
        hop.hint_char1 {
          direction = directions.BEFORE_CURSOR,
          current_line_only = false,
        }
      end,
      desc = "Jump back to specific char",
    },
    ["<leader><leader>jp"] = {
      function()
        hop.hint_patterns {
          direction = directions.AFTER_CURSOR,
          current_line_only = false,
        }
      end,
      desc = "Jump ahead to pattern",
    },
    ["<leader><leader>jP"] = {
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
