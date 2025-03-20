return {
    {
        -- Make sure we auto pair brackets and such
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
    {
        -- general comment commands
        'numToStr/Comment.nvim',
        event =
        {
            'BufReadPre',
            'BufNewFile',
        },
        config = function()
            require('Comment').setup()
        end,
    },
    {
        -- Documentation generation
        'kkoomen/vim-doge',
        build = ':call doge#install()',
        config = function()
            vim.g.doge_enable_mappings = 0
            vim.g.doge_doc_standard_python = 'google'
        end
    },
    {
        -- Tree interactions with undo
        'mbbill/undotree',
        event =
        {
            'BufRead',
            'BufNewFile'
        },
    },
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = function()
            require("toggleterm").setup()

            -- Create custom terminals
            local Terminal = require('toggleterm.terminal').Terminal
            local terminals = {}

            -- lazygit
            terminals.lazygit = Terminal:new({
                cmd = "lazygit",
                dir = "git_dir",
                direction = "float",
                float_opts = {
                    border = "double",
                },
            })

            -- top
            terminals.top = Terminal:new({
                cmd = "top",
                dir = "git_dir",
                direction = "float",
                float_opts = {
                    border = "double",
                },
            })

            -- Set Keymaps
            require('core.remap').toggleterm(terminals)
        end
    },
}
