return
{
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        lazy = false,
        priority = 100,
        config =
            function()
                vim.cmd('colorscheme rose-pine')
            end,
    },
    {
        'rebelot/kanagawa.nvim',
        name = 'kanagawa',
        lazy = true,
        priority = 100,
    },
}
