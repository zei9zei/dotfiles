return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    -- A list of parser names, or "all" (the listed parsers MUST always be installed)
    ensure_installed = {
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "markdown",
      "markdown_inline",
      -- Required by noice
      "regex",
      "bash",
    },
    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = false,

    highlight = { enable = true },
    indent = { enable = true },
  },
}
