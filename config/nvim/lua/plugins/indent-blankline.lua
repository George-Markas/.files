return {
  "lukas-reineke/indent-blankline.nvim",
  lazy = false,
  config = function()
    require("ibl").setup {
      exclude = {
        filetypes = {
          "alpha", -- disable in dashboard-nvim
        },
      },
    }
  end
}
