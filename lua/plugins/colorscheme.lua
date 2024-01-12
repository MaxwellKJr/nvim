return {
  "NvChad/nvim-colorizer.lua",
  "HiPhish/nvim-ts-rainbow2",
  "mrshmllow/document-color.nvim",
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    priority = 1000,
    config = true,
    opts = {
      transparent_mode = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
