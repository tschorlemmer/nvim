return
{
    {
        'mbbill/undotree',
        event =
        {
            'BufRead',
            'BufNewFile'
        },
        config =
            function()
                vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>', { desc = 'undotree: toggle' })
            end
    },
}
