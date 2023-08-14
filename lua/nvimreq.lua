require('nvim-tree').setup {
    on_attach = my_on_attach,
    modified  = {
        enable = true,
        show_on_dirs = false,
        show_on_open_dirs = false,
    },
    renderer = {
        indent_markers = {
            enable = true,
            inline_arrows = false,
            icons = {
                item = '├',
            },
        },
        icons = {
            glyphs = {
                folder = {
                    arrow_closed = '→',
                    arrow_open = '←'
                },
            },
        },
        highlight_modified = "all",
    },
    view = {
        side = "right",
        float = {
            enable = true,
            open_win_config = {
                border = "single",
                col = vim.api.nvim_get_option("columns"),
            },
        },
    },
}

-- To open on startup
local function open_nvim_tree()
  require("nvim-tree.api").tree.open()
end
-- run upon vim enter
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

-- Keymaps
local opts = {noremap = true, silent = true}

vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeCollapse<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-t>", ":NvimTreeToggle<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-f>", ":NvimTreeFindFile<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-n>", ":NvimTreeFocus<CR>", opts)
