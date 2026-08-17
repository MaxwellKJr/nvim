return {
  -- Solarized Osaka
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true, -- Enable this to disable setting the background color
      terminal_colors = true,
      -- Background styles. Can be "dark", "transparent" or "normal"
      styles = {
        floats = "transparent",
        sidebars = "transparent",
      },
    },
  },
  -- Solarized (Broken)
  -- {
  --   "maxmx03/solarized.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   config = function(_, opts)
  --     vim.o.termguicolors = true
  --     vim.o.background = "dark"
  --     require("solarized").setup(opts)
  --     vim.cmd.colorscheme("solarized")
  --   end,
  -- },
  -- Sonokai
  {
    "sainnhe/sonokai",
    lazy = true,
    priority = 1000,
    config = true,
    opts = {
      sonokai_style = "andromeda", -- 'default', 'atlantis', 'andromeda', 'shusia', 'maia',
    },
  },
  -- Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    priority = 1000,
    config = true,
    opts = {
      transparent_mode = false,
      terminal_colors = true, -- add neovim terminal colors
      contrast = "hard", -- can be "hard", "soft" or empty string
    },
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka", -- "solarized-osaka" | "solarized-osaka-light" | "solarized-osaka-vivid"
    },
  },
}
