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
                vim.cmd('colorscheme tokyonight-night')
            end,
    },
    {
        'rebelot/kanagawa.nvim',
        name = 'kanagawa',
        lazy = true,
        priority = 100,
    },
}
