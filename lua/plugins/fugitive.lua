return
{
    {
        'tpope/vim-fugitive',
        keys = 
            {
                {'<leader>gs', ':Git<CR>'},
                {'<leader>gd', ':G diff<CR>'},
                {'<leader>gc', ':G commit -a<CR>'},
                {'<leader>gp', ':G push<CR>'},
                {'<leader>gl', ':G pull<CR>'},
                {'<leader>gb', ':G blame<CR>'},
                {'<leader>gm', ':G mergetool<CR>'},
            },
        cmd = 
            {
                'G',
                'Git',
            },
    },
}
