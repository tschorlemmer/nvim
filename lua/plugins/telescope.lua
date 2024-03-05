return
{{
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = 
            function()
                local builtin = require('telescope.builtin')
                vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
                vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
                vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})
                vim.keymap.set('n', '<leader>fj', builtin.current_buffer_fuzzy_find, {})
                vim.keymap.set('n', '<leader>fq', builtin.quickfix, {})
                vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
                vim.keymap.set('n', '<leader>fm', builtin.man_pages, {})
            end,
 }}
