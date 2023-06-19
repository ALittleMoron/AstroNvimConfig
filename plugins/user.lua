local utils = require "astronvim.utils"
return {
  -- themes
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
  },

  -- verbose output for errors, warnings and others + easier goto for them.
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      height = 12,
    },
  },

  -- comments
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
  },

  -- motion utils
  {
    "phaazon/hop.nvim",
    branch = "v2",
    config = function() require("hop").setup { keys = "etovxqpdygfblzhckisuran" } end,
  },

  -- python pack
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed =
          utils.list_insert_unique(opts.ensure_installed, { "python", "toml" })
      end
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "pyright" })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = function(_, opts)
      opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, "python")
    end,
  },
  {
    "linux-cultist/venv-selector.nvim",
    opts = {},
  },
  {
    "williamboman/mason.nvim",
    opts = {
      PATH = "append",
    },
  },
}
