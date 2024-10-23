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
      section_separators = { left = "", right = "" },
      component_separators = { left = "", right = "" },
    },
    sections = {
      lualine_c = {
        {
          "filename",
          newfile_status = true,
          path = 1,
          symbols = filename_icons,
        },
      },
      lualine_x = {
        {
          require("lazy.status").updates,
          cond = require("lazy.status").has_updates,
          color = { fg = "#ff9e64" },
        },
      },
      lualine_y = {
        {
          function()
            return vim.lsp.get_clients()[1].name
          end,
          cond = function()
            return #vim.lsp.get_clients() > 0
          end,
          icon = { " " },
        },
        -- NOTE: to handle two clients (python)
        {
          function()
            return vim.lsp.get_clients()[2].name
          end,
          cond = function()
            return #vim.lsp.get_clients() == 2
          end,
          icon = { " " },
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
