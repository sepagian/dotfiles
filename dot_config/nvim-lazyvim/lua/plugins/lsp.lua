return {
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      "L3MON4D3/LuaSnip",
      "onsails/lspkind.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      ensure_installed = {
        "lua_ls",
        "svelte",
        "biome",
        "astro",
        "emmet_ls",
        "oxfmt",
        "oxlint",
      },
      automatic_enable = {},
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        oxfmt = {
          filetypes = {
            "astro",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "toml",
            "json",
            "jsonc",
            "json5",
            "yaml",
            "html",
            "vue",
            "handlebars",
            "css",
            "scss",
            "less",
            "graphql",
            "markdown",
          },
        },
        oxlint = {
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "vue",
            "astro",
            "svelte",
          },
        },
        svelte = {},
        emmet_language_server = {
          filetypes = { "html", "css", "scss", "sass", "less", "svelte" },
        },
        tsserver = {
          enabled = false,
        },
        ts_ls = {
          enabled = false,
        },
        vtsls = {
          enabled = false,
        },
      },
    },
  },
  -- {
  --   "saghen/blink.cmp",
  --   version = "1.*",
  --   event = {
  --     "InsertEnter",
  --     "CmdlineEnter",
  --   },
  --   dependencies = {
  --     "rafamadriz/friendly-snippets",
  --     "xzbdmw/colorful-menu.nvim",
  --     "nvim-tree/nvim-web-devicons",
  --     "onsails/lspkind.nvim",
  --   },
  --   opts = {
  --     keymap = {
  --       preset = "super-tab", -- Enables Tab completion like VSCode
  --       ["<C-j>"] = { "select_next", "fallback" },
  --       ["<C-k>"] = { "select_prev", "fallback" },
  --     },
  --     appearance = {
  --       nerd_font_variant = "mono",
  --       use_nvim_cmp_as_default = true,
  --     },
  --     signature = { enabled = true },
  --     sources = {
  --       default = { "lsp", "path", "snippets", "buffer" },
  --       providers = {},
  --     },
  --     completion = {
  --       documentation = { auto_show = true, auto_show_delay_ms = 500 },
  --       menu = {
  --         enabled = true,
  --         max_height = 10,
  --         min_width = 60,
  --         border = "rounded",
  --         winblend = 0,
  --         winhighlight = "Normal:BlinkCmpMenu,FloatBorder:BlinkCmpMenuBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
  --         scrolloff = 2,
  --         scrollbar = true,
  --         direction_priority = { "s", "n" },
  --         auto_show = true,
  --         draw = {
  --           gap = 2,
  --           padding = 1,
  --           treesitter = { "lsp" },
  --           columns = { { "kind_icon", "label", gap = 2 }, { "kind" } },
  --           components = {
  --             label = {
  --               width = { fill = true, min = 60 },
  --               text = function(ctx)
  --                 return require("colorful-menu").blink_components_text(ctx)
  --               end,
  --               highlight = function(ctx)
  --                 return require("colorful-menu").blink_components_highlight(ctx)
  --               end,
  --             },
  --             kind_icon = {
  --               width = { min = 2 },
  --               text = function(ctx)
  --                 local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
  --                 return kind_icon
  --               end,
  --               highlight = function(ctx)
  --                 local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
  --                 return hl
  --               end,
  --             },
  --             kind = {
  --               width = { min = 6 },
  --               highlight = function(ctx)
  --                 local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
  --                 return hl
  --               end,
  --             },
  --           },
  --         },
  --       },
  --     },
  --   },
  -- },

  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {
      root_dir = vim.fs.root(0, ".git"),
      settings = {
        separate_diagnostic_server = true,
        publish_diagnostic_on = "insert_leave",
        tsserver_max_memory = "auto",
        tsserver_file_preferences = {
          includeCompletionsForModuleExports = true,
          includeInlayParameterNameHints = "all",
          quotePreference = "auto",
        },
      },
    },
  },
}
