require('nvim-tree').setup {
    on_attach = my_on_attach,
    renderer = {
        indent_markers = {
            enable = true,
            icons = {
                item = '├',
            },
        },
    },
    view = {
        side = "right",
        float = {
            enable = true,
            open_win_config = {
                border = "single",
                relative = "editor",
                width = 53,
                height = 27,
                row = 0,
                col = vim.api.nvim_get_option("columns") - 2,
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
