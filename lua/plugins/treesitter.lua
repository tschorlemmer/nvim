return
{ {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    enabled = true,
    lazy = false,
    config = function()
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'c', 'cpp', 'lua', 'python' },
            callback = function() vim.treesitter.start() end,
        })
    end
} }
