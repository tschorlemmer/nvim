return
{
    {
        'cocopon/iceberg.vim',
        name = 'iceberg',
        lazy = false,
        priority = 100,
        config =
            function()
                vim.cmd('colorscheme iceberg')
            end,
    },
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        lazy = true,
        priority = 100,
        config =
            function()
                -- vim.cmd('colorscheme rose-pine')
            end,
    },
    {
        'folke/tokyonight.nvim',
        name = 'tokyonight',
        lazy = true,
        priority = 100,
        config =
            function()
                -- vim.cmd('colorscheme tokyonight-moon')
            end,
    },
    {
        'rebelot/kanagawa.nvim',
        name = 'kanagawa',
        lazy = true,
        priority = 100,
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup {
            }
        end
    },
    {
        'nvim-tree/nvim-tree.lua',
        version = '*',
        lazy = false,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require('nvim-tree').setup {
                on_attach = function(buf)
                    local api = require('nvim-tree.api')

                    -- default mappings
                    api.config.mappings.default_on_attach(buf)

                    -- custom mappings
                    require("core.remap").nvim_tree(buf, api)
                end,
                actions = {
                    open_file = {
                        quit_on_open = true,
                    },
                },
            }
        end,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
        config = function()
            require("ibl").setup()
        end
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {},
    }
}
