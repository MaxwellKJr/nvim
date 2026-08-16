return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = opts.options or {}
      opts.options.theme = "auto"
      opts.options.component_separators = ""
      opts.options.section_separators = ""
      opts.options.icons_enabled = true
      opts.options.globalstatus = true

      opts.sections = {
        lualine_a = {
          {
            "mode",
            icon = "",
          },
        },
        lualine_b = {
          -- {
          --   "filetype",
          --   icon_only = true, -- only the icon, no filename
          --   colored = true,
          -- },
        },
        lualine_c = {
          {
            "branch",
            icon = " ", -- git branch icon
          },
          {
            "diff",
            symbols = {
              added = " ", --  
              modified = "● ",
              removed = " ",
            },
          },
        },
        lualine_x = {
          {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            symbols = {
              error = " ",
              warn = " ",
              info = " ",
              hint = " ",
            },
          },
          {
            function()
              local clients = vim.lsp.get_clients({ bufnr = 0 })
              if #clients == 0 then
                return ""
              end
              local names = {}
              for _, client in ipairs(clients) do
                table.insert(names, client.name)
              end
              -- return " LSP ~ " .. table.concat(names, ", ")
              return " " .. table.concat(names, ", ")
            end,
          },
          {
            "filetype",
            icon_only = false, -- only the icon
            colored = true,
          },
          {
            "datetime",
            icon = " ",
            style = "%H:%M", -- just the time
          },
        },
        lualine_y = {},
        lualine_z = {},
      }

      opts.inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filetype" },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      }

      return opts
    end,
  },
}
