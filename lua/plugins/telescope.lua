return
{{
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = 
            function()
                local builtin = require('telescope.builtin')
                vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc='telescope: find_files'})
                vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc='telescope: live_grep'})
                vim.keymap.set('n', '<leader>fk', builtin.keymaps, {desc='telescope: find files'})
                vim.keymap.set('n', '<leader>fj', builtin.current_buffer_fuzzy_find, {desc='telescope: current_buffer_fuzzy_find'})
                vim.keymap.set('n', '<leader>fq', builtin.quickfix, {desc='telescope: quickfix'})
                vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc='telescope: help_tags'})
                vim.keymap.set('n', '<leader>fm', builtin.man_pages, {desc='telescope: man_pages'})
            end,
 }}
