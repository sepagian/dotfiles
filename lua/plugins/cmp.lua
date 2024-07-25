return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require "cmp"
    opts.sources = cmp.config.sources {
      { name = "nvim_lsp", priority = 750 },
      { name = "codeium", priority = 1000 },
      { name = "luasnip", priority = 500 },
      { name = "path", priority = 250 },
      { name = "buffer", priority = 250 },
    }
    opts.formatting = {
      format = require("lspkind").cmp_format {
        mode = "symbol",
        maxwidth = 50,
        ellipsis_char = "...",
        symbol_map = {
          Text = "󰉿",
          Method = "󰆧",
          Function = "󰊕",
          Constructor = "",
          Field = "󰜢",
          Variable = "󰀫",
          Class = "󰠱",
          Interface = "",
          Module = "",
          Property = "󰜢",
          Unit = "󰑭",
          Value = "󰎠",
          Enum = "",
          Keyword = "󰌋",
          Snippet = "",
          Color = "󰏘",
          File = "󰈙",
          Reference = "󰈇",
          Folder = "󰉋",
          EnumMember = "",
          Constant = "󰏿",
          Struct = "󰙅",
          Event = "",
          Operator = "󰆕",
          Codeium = "",
        },
      },
    }
    opts.mapping["<C-x>"] = cmp.mapping.select_next_item()
  end,
}
