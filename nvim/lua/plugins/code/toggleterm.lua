local start_ipython = function()
  local python_path = require("venv-selector").python()
  require("venv-selector").activate_from_path(python_path)
  return vim.cmd("TermExec cmd='ipython' size=100 direction=vertical name=IPython")
end
return {
  "akinsho/toggleterm.nvim",
  version = "*",
  dependencies = { "linux-cultist/venv-selector.nvim" },
  keys = {
    { "<C-\\>", ":ToggleTerm size=20 direction=horizontal name=Terminal<CR>", desc = "Open Terminal", silent = true },
    {
      "<leader>ct",
      ":ToggleTerm direction=float name='Floating Terminal'<CR>",
      desc = "Open Floating Terminal",
      silent = true,
    },
    {
      "<leader>pp",
      start_ipython,
      desc = "Open IPython Terminal",
      silent = true,
    },
  },
  opts = {},
  config = function(opts)
    require("toggleterm").setup(opts)
    local trim_spaces = true

    vim.keymap.set("n", "<leader>ps", function()
      require("toggleterm").send_lines_to_terminal("single_line", trim_spaces, { args = vim.v.count })
    end, { desc = "[S]end current line to I[P]ython", silent = true })

    -- BUG: visual selection not working
    vim.keymap.set("v", "<leader>ps", function()
      require("toggleterm").send_lines_to_terminal("visual_selection", trim_spaces, { args = vim.v.count })
    end, { desc = "[S]end selection to I[P]ython", silent = true })

    vim.keymap.set("x", "<leader>ps", function()
      require("toggleterm").send_lines_to_terminal("visual_lines", trim_spaces, { args = vim.v.count })
    end, { desc = "[S]end lines to I[P]ython", silent = true })
  end,
}
