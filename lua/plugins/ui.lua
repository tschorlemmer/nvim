return
{
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        lazy = true,
        priority = 100,
        -- config =
        --     function()
        --         vim.cmd('colorscheme rose-pine')
        --     end,
    },
    {
        'folke/tokyonight.nvim',
        name = 'tokyonight',
        lazy = false,
        priority = 100,
        config =
            function()
                vim.cmd('colorscheme tokyonight-moon')
                vim.keymap.set('n', '<leader>cc', ':colorscheme tokyonight<CR>')
                vim.keymap.set('n', '<leader>cm', ':colorscheme tokyonight-moon<CR>')
                vim.keymap.set('n', '<leader>cn', ':colorscheme tokyonight-night<CR>')
                vim.keymap.set('n', '<leader>cs', ':colorscheme tokyonight-storm<CR>')
                vim.keymap.set('n', '<leader>cd', ':colorscheme tokyonight-day<CR>')
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
                on_attach = function(bufnr)
                    local api = require('nvim-tree.api')

                    -- default mappings
                    api.config.mappings.default_on_attach(bufnr)

                    local function opts(desc)
                        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
                    end

                    -- custom mappings
                    vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
                    vim.keymap.set('n', '.', api.tree.change_root_to_node, opts('CD'))
                    vim.keymap.set('n', '<C-.>', api.node.run.cmd, opts('Run Cmd'))
                    vim.keymap.set('n', 'v', api.node.open.vertical, opts('Open: Vertical Split'))
                end,
                actions = {
                    open_file = {
                        quit_on_open = true,
                    },
                },
            }

            vim.keymap.set('n', '<leader>d',
                function()
                    require('nvim-tree.api').tree.toggle({ find_file = true })
                end,
                { desc = "nvim-tree: toggle" }
            )
        end,
    }
}
