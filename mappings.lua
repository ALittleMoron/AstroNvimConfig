local hop = require('hop')
local directions = require('hop.hint').HintDirection

return {
  n = {
    ["<leader><leader>w"] = {
      function ()
        hop.hint_words({ direction = directions.AFTER_CURSOR, current_line_only = false })
      end,
      desc = "Jump ahead to word start",
    },
    ["<leader><leader>b"] = {
      function ()
        hop.hint_words({ direction = directions.BEFORE_CURSOR, current_line_only = false })
      end,
      desc = "Jump back to word start",
    },
    ["<leader><leader>s"] = {
      function ()
        hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false })
      end,
      desc = "Jump ahead to specific char",
    },
    ["<leader><leader>S"] = {
      function ()
        hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = false })
      end,
      desc = "Jump back to specific char",
    },
    ["<leader><leader>p"] = {
      function ()
        hop.hint_patterns({ direction = directions.AFTER_CURSOR, current_line_only = false })
      end,
      desc = "Jump ahead to pattern",
    },
    ["<leader><leader>P"] = {
      function ()
        hop.hint_patterns({ direction = directions.BEFORE_CURSOR, current_line_only = false })
      end,
      desc = "Jump back to pattern",
    },
  },
  t = {},
}

