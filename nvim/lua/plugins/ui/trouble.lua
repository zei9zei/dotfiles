return {
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "[X] Trouble Diagnostics ",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "[X] Trouble Buffer Diagnostics ",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "[C]ode [S]ymbols (Trouble)",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "[C]ode [LSP] Definitions / references / ... (Trouble)",
    },
    -- TODO: how to use these two?
    -- {
    --   "<leader>xL",
    --   "<cmd>Trouble loclist toggle<cr>",
    --   desc = "Location List (Trouble)",
    -- },
    -- {
    --   "<leader>xQ",
    --   "<cmd>Trouble qflist toggle<cr>",
    --   desc = "Quickfix List (Trouble)",
    -- },
  },
}
