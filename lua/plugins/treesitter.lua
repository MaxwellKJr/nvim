return {
  "HiPhish/rainbow-delimiters.nvim",
  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "css",
        "scss",
        "javascript",
        "typescript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "query",
        "regex",
        "typescript",
        "vim",
        "yaml",
        "python",
      },
    },
  },
}
