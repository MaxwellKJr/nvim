return {
  "neovim/nvim-lspconfig",
  opts = {
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {}),
  },
}
