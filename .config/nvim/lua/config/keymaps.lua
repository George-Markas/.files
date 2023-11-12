-- Lsp related keymaps are handled in nvim-lspconfig.lua

-- Directory navigation
vim.keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Tab navigation
vim.api.nvim_set_keymap("n", "<C-Right>", "<cmd>BufferNext<CR>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-Left>", "<cmd>BufferPrevious<CR>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-q>", '<Cmd>BufferClose<CR>', { noremap = true, silent = true })

-- Find files
vim.keymap.set("n", "<leader>t", ":Telescope find_files<CR>", { noremap = true, silent = true })

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = true, silent = true })

-- Indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
