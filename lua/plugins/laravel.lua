return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        php = { { "pint", "php_cs_fixer" } },
      },
    },
    {
      -- Add the Laravel.nvim plugin which gives the ability to run Artisan commands
      -- from Neovim.
      "adalessa/laravel.nvim",
      dependencies = {
        "nvim-telescope/telescope.nvim",
        "tpope/vim-dotenv",
        "MunifTanjim/nui.nvim",
        "nvimtools/none-ls.nvim",
      },
      cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
      keys = {
        { "<leader>la", ":Laravel artisan<cr>" },
        { "<leader>lr", ":Laravel routes<cr>" },
        { "<leader>lm", ":Laravel related<cr>" },
      },
      event = { "VeryLazy" },
      config = true,
      opts = {
        lsp_server = "phpactor",
        features = { null_ls = { enable = false } },
      },
    },
  },
}
