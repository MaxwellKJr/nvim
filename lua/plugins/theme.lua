return {
  -- Solarized Osaka
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  -- -- Sonokai
  -- {
  --   "sainnhe/sonokai",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     sonokai_style = "andromeda", -- 'default', 'atlantis', 'andromeda', 'shusia', 'maia',
  --   },
  -- },
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
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
