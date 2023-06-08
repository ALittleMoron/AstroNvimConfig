return {
  updater = {
    remote = "origin",
    channel = "stable",
    version = "latest",
    pin_plugins = nil,
    skip_prompts = false,
    show_changelog = true,
    auto_quit = false,
    remotes = {},
  },

  colorscheme = "gruvbox",

  diagnostics = {
    virtual_text = true,
    underline = true,
  },

  lsp = {
    formatting = {
      format_on_save = {
        enabled = true,
        allow_filetypes = {
          "python",
        },
        ignore_filetypes = {},
      },
      disabled = {},
      timeout_ms = 1000,
    },

    servers = {},
  },

  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },
  polish = function()
  end,
}
