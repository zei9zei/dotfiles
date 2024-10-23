local filename_icons = {
  modified = "", -- Text to show when the file is modified.
  readonly = "", -- Text to show when the file is non-modifiable or readonly.
  unnamed = "", -- Text to show for unnamed buffers.
  newfile = "", -- Text to show for newly created file before first write
}
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
          symbols = filename_icons,
        },
      },
    },
    inactive_winbar = {
      lualine_c = {
        {
          "filename",
          newfile_status = true,
          symbols = filename_icons,
        },
      },
    },
  },
}
