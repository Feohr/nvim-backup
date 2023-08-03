return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    -- NUI installation for better window UI
    use 'MunifTanjim/nui.nvim'
    -- Plugin for Github support
    use 'tpope/vim-fugitive'
    -- GruvBox
    use 'morhetz/gruvbox'
    -- Installing NvimTree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
    }
    -- Everforest theme
    use 'sainnhe/everforest'
    -- LSP
    use 'neovim/nvim-lspconfig'
    -- rust analyzer
    use 'simrat39/rust-tools.nvim'
    -- To make it easy to maintain tabs with NERDTree
    use 'jistr/vim-nerdtree-tabs'
    -- Ale support
    use 'dense-analysis/ale'
    -- For bracket matching
    use 'tmsvg/pear-tree'
    -- ToggleTerm for floating terminal
    use {'akinsho/toggleterm.nvim', tag = "*"}
    -- Telescope for fuzzy finding
    use 'nvim-lua/plenary.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        requires = {
            'nvim-lua/plenary.nvim',
        },
    }
    -- For Tree-sitter.
    use 'nvim-treesitter/nvim-treesitter'
    -- For indent lines.
    use "lukas-reineke/indent-blankline.nvim"
    -- To get icons for NvimTree.
    use 'nvim-tree/nvim-web-devicons'
    -- Github theme
    use 'projekt0n/github-nvim-theme'
    -- Catpuccino theme
    use { "catppuccin/nvim", as = "catppuccin" }
    -- To preview markdown.
    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function()
            vim.g.mkdp_filetypes = { "markdown" }
            vim.g.mkdp_theme = "dark"
        end,
        ft = {
            "markdown"
        },
    })
    -- Debugging tool
    use 'mfussenegger/nvim-dap'
    -- With UI
    use {
        "rcarriga/nvim-dap-ui",
        requires = {
            "mfussenegger/nvim-dap",
        }
    }
    use 'xiyaowong/transparent.nvim'
end)
