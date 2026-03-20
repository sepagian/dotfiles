return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      javascript = { "oxfmt" },
      javascriptreact = { "oxfmt" },
      typescript = { "oxfmt" },
      typescriptreact = { "oxfmt" },
      vue = { "oxfmt" },
      astro = { "oxfmt" },
      json = { "oxfmt" },
      jsonc = { "oxfmt" },
      yaml = { "oxfmt" },
      toml = { "oxfmt" },
      html = { "oxfmt" },
      css = { "oxfmt" },
      scss = { "oxfmt" },
      svelte = { "biome" },
    },
  },
}
