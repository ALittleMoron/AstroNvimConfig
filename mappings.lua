local hop = require('hop')
local directions = require('hop.hint').HintDirection

return {
  n = {
    ["<leader><leader>w"] = {
      function ()
        hop.hint_words({ direction = directions.AFTER_CURSOR, current_line_only = false })
      end
    },
    ["<leader><leader>W"] = {
      function ()
        hop.hint_words({ direction = directions.BEFORE_CURSOR, current_line_only = false })
      end
    },
    ["<leader><leader>s"] = {
      function ()
        hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false })
      end
    },
    ["<leader><leader>S"] = {
      function ()
        hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = false })
      end
    },
  },
  t = {},
}

