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
        -- Tree interactions with undo
        'mbbill/undotree',
        event =
        {
            'BufRead',
            'BufNewFile'
        },
    },
    {
        -- LLM Completion
        'github/copilot.vim',
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
                -- function to run on opening the terminal
                on_open = function(term)
                    vim.cmd("startinsert!")
                    -- Set Terminal keymaps
                end,
                -- function to run on closing the terminal
                on_close = function(term)
                    vim.cmd("startinsert!")
                end,
            })

            -- Set Keymaps
            require('core.remap').toggleterm(terminals)
        end
    },
}
