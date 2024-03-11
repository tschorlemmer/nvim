return
{
    {
        'mbbill/undotree',
        config = 
        function()
            vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>', {desc='undotree: toggle'})
        end
    },
}
