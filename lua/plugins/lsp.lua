-- Delay before showing hover (in milliseconds)
-- vim.opt.updatetime = 600 -- 600ms feels good (default is 4000)
--
-- vim.api.nvim_create_autocmd("CursorHold", {
--   callback = function()
--     local clients = vim.lsp.get_clients({ bufnr = 0 })
--
--     for _, client in ipairs(clients) do
--       if client.supports_method("textDocument/hover") then
--         vim.lsp.buf.hover({
--           border = "rounded", -- nicer border
--           max_width = 80,
--           max_height = 20,
--           focusable = false, -- don't steal focus
--         })
--         return
--       end
--     end
--   end,
-- })
--
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Enable documentation
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {}),

      -- Enable inlay hints globally
      inlay_hints = {
        enabled = true,
      },
      servers = {
        -- Disable the default ones
        vtsls = { enabled = false },
        tsserver = { enabled = false },

        -- Enable typescript-language-server
        ts_ls = {
          enabled = true,
          settings = {
            typescript = {
              inlayHints = {
                includeInlayParameterNameHints = "literals", -- "none" | "literals" | "all"
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true, -- ← this shows `userName: string`
                includeInlayVariableTypeHintsWhenTypeMatchesName = false,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
            javascript = {
              inlayHints = {
                includeInlayParameterNameHints = "literals",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayVariableTypeHintsWhenTypeMatchesName = false,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
          },
        },
      },
    },
  },
}
