return {
  { -- Terminal Overlay
    "akinsho/toggleterm.nvim",
    version = "v2.*",
    opts = {
      size = 20,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      close_on_exit = false,
      auto_scroll = true,
      start_in_insert = true,
      direction = "float",
      shell = vim.o.shell,
      shading_factor = 2,
      float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    },
  },
  { -- Fuzzy Finder (files, lsp, etc)
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<Down>"] = require("telescope.actions").move_selection_next,
            ["<Up>"] = require("telescope.actions").move_selection_previous,
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-k>"] = require("telescope.actions").move_selection_previous,
            ["<C-u>"] = false,
            ["<C-d>"] = false,
          },
        },
      },
    },
  },
  -- { -- LSP Configuration & Plugins
  --   "neovim/nvim-lspconfig",
  --   init = function()
  --     local on_attach = function(client, bufnr)
  --       if client.name == "ruff_lsp" then
  --         -- Disable hover in favor of Pyright
  --         client.server_capabilities.hoverProvider = false
  --       end
  --     end
  --
  --     require("lspconfig").ruff_lsp.setup({
  --       on_attach = on_attach,
  --     })
  --
  --     require("lspconfig").pyright.setup({
  --       on_attach = on_attach,
  --       -- disable pyright for linting in favor of ruff_lsp
  --       settings = {
  --         pyright = {
  --           -- Using Ruff's import organizer
  --           disableOrganizeImports = true,
  --         },
  --         python = {
  --           analysis = {
  --             -- Ignore all files for analysis to exclusively use Ruff for linting
  --             ignore = { "*" },
  --           },
  --         },
  --       },
  --     })
  --   end,
  -- },
  -- Themes
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    opts = {},
    -- config = function()
    --   vim.cmd.colorscheme("everforest")
    -- end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    -- Theme inspired by Atom
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    -- config = function()
    --   vim.cmd.colorscheme("onedark")
    -- end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    -- Theme inspired by Sublime
    "kaiuri/nvim-juliana",
    lazy = false,
    opts = {},
    config = true,
  },
}
