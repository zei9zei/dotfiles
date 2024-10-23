return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    opts = {},
    keys = {
      { "<leader>e", ":Neotree toggle left<CR>", desc = "File [E]xplorer" },
    },
    enabled = false,
  },
  {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    keys = {
      -- { "<C-\\>", ":Oil --float<CR>", desc = "Open floating file browser" },
      { "-", ":Oil<CR>", desc = "Open file browser" },
    },
  },
}
