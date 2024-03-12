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
}
