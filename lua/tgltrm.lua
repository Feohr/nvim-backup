require("toggleterm").setup{
    start_in_insert = false,
    close_on_exit = true,
    autochdir = false,
    direction = 'float',
    highlights = {
        FloatBorder = {
            guifg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("FloatBorder")), "fg#")
        },
    },
    float_opts = {
        border = 'rounded',
        width = 120,
        height = 20,
    },
}

-- Keymaps
local opts = {noremap = true, silent = true}

vim.api.nvim_set_keymap("n", "<leader>te", ":ToggleTerm<CR>", opts)
vim.api.nvim_set_keymap("t", "<leader><SPACE>", "<C-\\><C-n>", opts)
