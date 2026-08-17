return {
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false }, -- Disables the terrible scooll animation
      picker = {
        sources = {
          projects = {
            -- show just the project folder name, no truncpath "⋮" root marker
            -- (renders as a stray ":" in fonts without that glyph)
            formatters = { file = { filename_only = true } },
            -- always open the project's files, instead of falling back to
            -- whatever session/dashboard state persistence.nvim last saved
            confirm = function(picker, item)
              picker:close()
              if not item then
                return
              end
              vim.fn.chdir(item.file)
              Snacks.picker.files()
            end,
          },
        },
      },
      dashboard = {
        preset = {
          header = [[
  ███╗   ███╗     ██╗     ██████╗ ██████╗ ██████╗ ███████╗███████╗
  ████╗ ████║     ██║    ██╔════╝██╔═══██╗██╔══██╗██╔════╝██╔════╝
  ██╔████╔██║     ██║    ██║     ██║   ██║██║  ██║█████╗  ███████╗
  ██║╚██╔╝██║██   ██║    ██║     ██║   ██║██║  ██║██╔══╝  ╚════██║
  ██║ ╚═╝ ██║╚█████╔╝    ╚██████╗╚██████╔╝██████╔╝███████╗███████║
  ╚═╝     ╚═╝ ╚════╝      ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝╚══════╝
    ]],
        },
      },
    },
  },
}
