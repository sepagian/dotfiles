return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    terminal = {
      bo = {
        filetype = "snacks_terminal",
      },
      wo = {},
      stack = true, -- when enabled, multiple split windows with the same position will be stacked together (useful for terminals)
      keys = {
        q = "show",
        term_normal = {
          "<esc>",
          mode = "t",
          desc = "Double escape to normal mode",
        },
      },
    },
  },
}
