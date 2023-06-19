-- customize mason plugins
return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed =
        require("astronvim.utils").list_insert_unique(opts.ensure_installed, {})
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      opts.ensure_installed =
        require("astronvim.utils").list_insert_unique(opts.ensure_installed, {})
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = function(_, opts)
      opts.ensure_installed =
        require("astronvim.utils").list_insert_unique(opts.ensure_installed, {})
    end,
  },
}
