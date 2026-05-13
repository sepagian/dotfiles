local custom_theme = {
  normal = { a = { bg = "NONE" }, b = { bg = "NONE" }, c = { bg = "NONE" } },
  insert = { a = { bg = "NONE" }, b = { bg = "NONE" }, c = { bg = "NONE" } },
  visual = { a = { bg = "NONE" }, b = { bg = "NONE" }, c = { bg = "NONE" } },
  replace = { a = { bg = "NONE" }, b = { bg = "NONE" }, c = { bg = "NONE" } },
  command = { a = { bg = "NONE" }, b = { bg = "NONE" }, c = { bg = "NONE" } },
  inactive = { a = { bg = "NONE" }, b = { bg = "NONE" }, c = { bg = "NONE" } },
}

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    local opts = {
      options = {
        theme = custom_theme,
      },
    }
    return opts
  end,
}
