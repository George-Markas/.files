local config = function()
  local theme = require("lualine.themes.kanagawa")
  theme.normal.c.bg = nil

  require("lualine").setup {
    options = {
      theme = theme,
      globalstatus = true,
      component_separators = { left = '|', right = '|'},
      section_separators = { left = '', right = ''},
      disabled_filetypes = {
        -- statusline = { "alpha" },
      },
    },

    sections = {
      lualine_a = {{ "mode", color = { gui = "bold" } }},
      lualine_b = {"branch", "diff", "diagnostics"},
      lualine_c = {"filename"},
      lualine_x = {"encoding", { "fileformat", icons_enabled = false }, "filetype"},
      lualine_y = {"progress"},
      lualine_z = {"location"}
    },

    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },

    extensions = {
      "nvim-tree"
    },
  }
end

return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  config = config,
}
