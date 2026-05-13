return {
  "nvimdev/dashboard-nvim",
  lazy = false, -- As https://github.com/nvimdev/dashboard-nvim/pull/450, dashboard-nvim shouldn't be lazy-loaded to properly handle stdin.
  opts = function()
    local logo = ""
    logo = string.rep("\n", 8) .. logo .. "\n\n"
    local opts = {
      theme = "hyper",
      hide = {
        -- this is taken care of by lualine
        -- enabling this messes up the actual laststatus setting after loading a file
        statusline = false,
      },
      config = {
        week_header = {
          enable = true,
        },
        header = vim.split(logo, "\n"),
        shortcut = {
          {
            action = "lua LazyVim.pick()()",
            group = "Label",
            desc = " Find File ",
            icon = "",
            icon_hl = "@variable",
            key = "f",
          },
          {
            action = 'lua require("persistence").load()',
            desc = " Restore Session ",
            group = "Label",
            icon = "",
            key = "s",
          },
          {
            action = "LazyExtras",
            desc = " Lazy Extras ",
            group = "Label",
            icon = " ",
            key = "x",
          },
          {
            action = "Lazy",
            desc = " Lazy ",
            group = "Label",
            icon = "󰒲 ",
            key = "l",
          },
          {
            action = "lua LazyVim.pick.config_files()()",
            desc = " Config ",
            group = "Label",
            icon = "",
            key = "c",
          },
          {
            action = function()
              vim.api.nvim_input("<cmd>qa<cr>")
            end,
            desc = " Quit ",
            group = "Label",
            icon = " ",
            key = "q",
          },
        },
      },
    }

    -- open dashboard after closing lazy
    if vim.o.filetype == "lazy" then
      vim.api.nvim_create_autocmd("WinClosed", {
        pattern = tostring(vim.api.nvim_get_current_win()),
        once = true,
        callback = function()
          vim.schedule(function()
            vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
          end)
        end,
      })
    end
    return opts
  end,
}
