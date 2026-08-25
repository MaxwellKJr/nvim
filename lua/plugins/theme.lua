return {
  -- Solarized Osaka - "solarized-osaka" | "solarized-osaka-light" | "solarized-osaka-vivid"

  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true, -- Enable this to disable setting the background color
      terminal_colors = true,
      -- Background styles. Can be "dark", "transparent" or "normal"
      styles = {
        floats = "normal",
        sidebars = "normal",
      },
    },
  },

  -- OneDark
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("onedark").setup({
        style = "darker",
      })
      -- require("onedark").load()
    end,
  },

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

  -- Gruvbox Material
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      -- vim.cmd.colorscheme("gruvbox-material")
    end,
  },

  -- Rainbow Brackets
  {
    "HiPhish/rainbow-delimiters.nvim",
  },

  -- Activate
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
