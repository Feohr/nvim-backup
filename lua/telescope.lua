-- Keymaps
local opts = {noremap = true, silent = true}

vim.api.nvim_set_keymap("n", "<leader>gr", ":Telescope live_grep<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>gc", ":Telescope git_commits<CR>", opts)
