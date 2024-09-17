return
{
    {
        "neovim/nvim-lspconfig",
        event =
        {
            "VeryLazy",
            -- "VimEnter",
            -- "BufReadPre",
            -- "BufNewFile",
        },
        -- cmd =
        -- {
        --     "LspInstall",
        --     "LspUninstall",
        --     "LspInfo",
        -- },
        dependencies =
        {
            {
                "williamboman/mason-lspconfig.nvim",
                dependencies = {
                    "williamboman/mason.nvim",
                },
            },
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
            {
                "L3MON4D3/LuaSnip",
                build = "make install_jsregexp",
            },
            "mfussenegger/nvim-lint",
        },
        config =
            function()


                vim.api.nvim_create_autocmd('LspAttach', {
                    desc = 'LSP actions',
                    callback = function(event)
                        -- these will be buffer-local keybindings
                        -- because they only work if you have an active language server
                        require("core.remap").lsp(event.buf)
                    end
                })

                local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

                local default_setup = function(server)
                    require('lspconfig')[server].setup({
                        capabilities = lsp_capabilities,
                    })
                end

                require('mason').setup({})
                require('mason-lspconfig').setup({
                    ensure_installed = {},
                    handlers = {
                        default_setup,
                        lua_ls = function()
                            require('lspconfig').lua_ls.setup({
                                capabilities = lsp_capabilities,
                                settings = {
                                    Lua = {
                                        runtime = {
                                            version = 'LuaJIT'
                                        },
                                        diagnostics = {
                                            globals = { 'vim' },
                                        },
                                        workspace = {
                                            library = {
                                                vim.env.VIMRUNTIME,
                                            }
                                        }
                                    }
                                }
                            })
                        end
                    },
                })

                local cmp = require('cmp')

                cmp.setup({
                    sources = {
                        { name = 'nvim_lsp' },
                    },
                    mapping = cmp.mapping.preset.insert({
                        -- Enter key confirms completion item
                        ['kk'] = cmp.mapping.confirm({ select = true }),

                        -- Ctrl + space triggers completion menu
                        -- ['<C-Space>'] = cmp.mapping.complete(),
                    }),
                    snippet = {
                        expand = function(args)
                            require('luasnip').lsp_expand(args.body)
                        end,
                    },
                })

                -- Setup linters
                require('lint').linters_by_ft = {
                    python = { 'pylint', },
                    c = { 'clangtidy', },
                }
            end,
    }
}
