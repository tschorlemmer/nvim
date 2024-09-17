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
        'akinsho/toggleterm.nvim', version = "*", opts = { --[[ things you want to change go here]] }
    },
    {
        -- LLM Completion
        'github/copilot.vim',
    },
}
