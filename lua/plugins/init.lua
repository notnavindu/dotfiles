return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  "nvim-lua/plenary.nvim",

  {
    "nvchad/ui",
    config = function()
      require "nvchad"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },

  -- nv volt
  { "nvchad/volt", lazy = true },

  {
    "nvchad/minty",
    cmd = { "Shades", "Huefy" },
  },

  {
    "smoka7/hop.nvim",
    version = "*",
    keys = {
      {
        "<leader>fj",
        desc = "Hop Words",
        function()
          require("hop").hint_words()
        end,
      },
    },
    config = function()
      require("hop").setup()
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "tailwindcss-language-server",
      },
    },
  },
}
