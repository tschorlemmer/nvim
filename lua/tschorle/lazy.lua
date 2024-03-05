local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

plugins = 
{
    {
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
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    {
        'github/copilot.vim'
    },
    {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config =
            function()
                local harpoon = require('harpoon')
                harpoon:setup()
                vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end)
                vim.keymap.set("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
                vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end)
                vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end)
                vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end)
                vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end)
                vim.keymap.set("n", "<leader>h5", function() harpoon:list():select(5) end)
            end
    },
    {
        'mbbill/undotree',
        config = 
            function()
                vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>', {})
            end
    },
    {
        'tpope/vim-fugitive',
        config = 
            function()
                vim.keymap.set('n', '<leader>gs', ':Git<CR>', {})
                vim.keymap.set('n', '<leader>gd', ':Gdiff<CR>', {})
                vim.keymap.set('n', '<leader>gc', ':Gcommit<CR>', {})
                vim.keymap.set('n', '<leader>gp', ':Gpush<CR>', {})
                vim.keymap.set('n', '<leader>gl', ':Gpull<CR>', {})
                vim.keymap.set('n', '<leader>gb', ':Gblame<CR>', {})
            end
    },
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        lazy = false,
        config =
            function()
                vim.cmd('colorscheme rose-pine')
            end,
    },
    {
        'rebelot/kanagawa.nvim',
        name = 'kanagawa',
        lazy = true,
    }
}

opts = {}

require('lazy').setup(plugins, opts)
