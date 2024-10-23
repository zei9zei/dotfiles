return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-telescope/telescope-ui-select.nvim",
  },
  opts = {
    extensions = {
      ["fzf"] = {
        fuzzy = true, -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true, -- override the file sorter
        case_mode = "smart_case", -- or "ignore_case" or "respect_case"
        -- the default case_mode is "smart_case"
      },
      ["ui-select"] = {
        require("telescope.themes").get_dropdown(),
      },
    },
    -- defaults = {
    --   file_ignore_pattern = { "^.venv/" },
    -- },
  },
  config = function(opts)
    require("telescope").setup(opts)
    require("telescope").load_extension("fzf")
    require("telescope").load_extension("ui-select")
  end,
  cmd = "Telescope",
  keys = {
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "[F]ind [F]iles",
    },
    {
      "<leader>fr",
      function()
        require("telescope.builtin").oldfiles()
      end,
      desc = "[F]ind [R]ecent files",
    },
    {
      "<leader><leader>",
      function()
        require("telescope.builtin").buffers()
      end,
      desc = "[F]ind [B]uffers",
    },
    {
      "<leader>/",
      function()
        local builtin = require("telescope.builtin")
        local themes = require("telescope.themes")
        builtin.current_buffer_fuzzy_find(themes.get_dropdown({
          winblend = 10,
          previewer = false,
        }))
      end,
      desc = "[/] Fuzzly search in current buffer",
    },
    {
      "<leader>s/",
      function()
        require("telescope.builtin").live_grep({
          grep_open_files = true,
          prompt_title = "Live Grep in Open Files",
        })
      end,
      desc = "[S]earch [/] in open files",
    },
    {
      "<leader>sg",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "[S]earch by [G]rep",
    },

    {
      "<leader>sh",
      function()
        require("telescope.builtin").help_tags()
      end,
      desc = "[S]earch [H]elp",
    },
    {
      "<leader>sk",
      function()
        require("telescope.builtin").keymaps()
      end,
      desc = "[S]earch [K]eymaps",
    },
    {
      "<leader>sw",
      function()
        require("telescope.builtin").grep_string()
      end,
      desc = "[S]earch [W]ord under cursor",
    },
    {
      "<leader>st",
      function()
        require("telescope.builtin").colorscheme()
      end,
      desc = "[S]earch [T]heme and apply it using <CR>",
    },
    {
      "<leader>sn",
      function()
        require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })
      end,
      desc = "[S]earch [N]eovim config files",
    },
  },
}
