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
    enabled = false,
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    init = function()
      -- disable netrw at the very start of your init.lua
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      -- optionally enable 24-bit colour
      vim.opt.termguicolors = true
    end,
    opts = {},
    keys = {
      { "<leader>e", ":NvimTreeToggle<CR>", desc = "File [E]xplorer" },
    },
    enabled = true,
  },
}
