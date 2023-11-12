local M = {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })()
  end,

  config = function ()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "sql", "java", "javascript", "html", "css" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

return { M }
