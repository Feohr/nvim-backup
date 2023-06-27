local opts = {noremap = true, silent = true}

local function borderclr()
    return require('catppuccin.palettes.macchiato').blue
end

require("toggleterm").setup{
    start_in_insert = false,
    close_on_exit = true,
    autochdir = false,
    direction = 'float',
    highlights = {
        FloatBorder = {
            guifg = tostring(borderclr()),
        },
    },
    float_opts = {
        border = 'rounded',
        width = 120,
        height = 20,
    },
}

vim.api.nvim_set_keymap("n", "<leader>te", ":ToggleTerm<CR>", opts)
