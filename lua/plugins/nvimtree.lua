return { {
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
            end,
            actions = {
                open_file = {
                    quit_on_open = true,
                },
            },
        }

        vim.keymap.set('n', '<leader>d',
            function ()
                require('nvim-tree.api').tree.toggle({ find_file = true })
            end,
            { desc = "nvim-tree: toggle" }
        )
    end,
} }
