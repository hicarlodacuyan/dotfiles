return {
  -- Navigation Plugins
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  -- Formatting Plugins
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },

  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
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
        "tailwindcss-language-server",
        "typescript-language-server",
        "prettierd",
        "eslint_d",
        "pyright",
        "pylint",
        "gopls",
        "gofumpt",
        "goimports-reviser",
        "golangci-lint",
      },
    },
  },

  -- Treesitter Configuration
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "go",
      },
    },
  },

  -- Language Specific Plugins
  {
    "maxmellon/vim-jsx-pretty",
    ft = { "javascriptreact", "typescriptreact" },
  },
  {
    "mattn/emmet-vim", -- Optional: Added for Emmet support in HTML and JSX/TSX
    ft = { "html", "javascriptreact", "typescriptreact" },
  },

  -- Linting Configuration
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.lint"
    end,
  },

  -- GitHub Copilot
  {
    "github/copilot.vim",
    lazy = false,
  },
}
