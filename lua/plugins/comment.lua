return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  config = function(_, opts) require("todo-comments").setup(opts) end,
}
