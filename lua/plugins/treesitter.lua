-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "astro",
      "html",
      "css",
      "svelte",
      "vue",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
