return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  init = function()
    vim.o.showmode = false
  end,
  opts = {
    options = {
      theme = "dracula",
      globalstatus = true,
    },
    sections = {
      lualine_x = {
        {
          require("lazy.status").updates,
          cond = require("lazy.status").has_updates,
          color = { fg = "#ff9e64" },
        },
      },
      lualine_c = {
        {
          "filename",
          newfile_status = true,
          path = 1,
        },
      },
    },
    inactive_winbar = {
      lualine_c = {
        "filename",
      },
    },
  },
}
