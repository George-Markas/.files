return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.4",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },

  config = function()
    require("telescope").setup {
      pickers = {
        find_files = {
          previewer = true,
          hidden = true,
        },
      },

      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      },
    }

  require("telescope").load_extension("fzf")
  end
}
