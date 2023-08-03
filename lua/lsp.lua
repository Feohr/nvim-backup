opts = { buffer = 0 }

require'lspconfig'.rust_analyzer.setup{
    autostart = true,
    on_attach = function()
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<SPACE>d', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', '<SPACE-t>', vim.lsp.type_definition, opts)
        vim.keymap.set('n', '<SPACE-i>', vim.lsp.buf.implementation, opts)
    end,
    cmd = {
        "rustup", "run", "stable", "rust-analyzer",
    },
    settings = {
        ['rust-analyzer'] = {},
    },
}
