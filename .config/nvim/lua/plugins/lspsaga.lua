return {
  "nvimdev/lspsaga.nvim",
  lazy = false,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    require("lspsaga").setup({})
  end
}
