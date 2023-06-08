local utils = require("astronvim.utils")
return {
  {
	  "ellisonleao/gruvbox.nvim",
	  priority = 1000,
  },
  {
     "phaazon/hop.nvim",
     branch = "v2",
     config = function()
       require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
     end
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "python", "toml" })
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
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "isort", "black", "flake8" })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = function(_, opts) opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, "python") end,
  },
  {
    "linux-cultist/venv-selector.nvim",
    opts = {},
    keys = { { "<leader>lv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" } },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      PATH = "append",
    },
  },
}

