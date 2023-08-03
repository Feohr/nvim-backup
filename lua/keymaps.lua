-- Keymaps
local opts = {noremap = true, silent = true}

vim.api.nvim_set_keymap("n", "<A-t>", ":tabclose<CR>", opts)
vim.api.nvim_set_keymap("n", "<SPACE><CR>", "O<Esc>", opts)
vim.api.nvim_set_keymap("n", "<CR>", "o<Esc>", opts)
vim.api.nvim_set_keymap("n", "tn", ":tabnew<CR>", opts)
vim.api.nvim_set_keymap("i", "jj", "<Plug>(PearTreeFinishExpansion)<Esc>", opts)
vim.api.nvim_set_keymap("i", "kk", "<Plug>(PearTreeFinishExpansion)<Esc>", opts)
