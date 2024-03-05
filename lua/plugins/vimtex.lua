return
{{
    'lervag/vimtex',
    ft = {'tex', 'bib'},
    config =
        function()
            vim.g.vimtex_complier_method = 'latexmk'
            vim.g.maplocalleader = ' '
            vim.g.vimtex_quickfix_autoclose_after_keystrokes = 2


            vim.g.vimtex_toc_config = {
                layer_status = {
                    content = 1,
                    label = 0,
                    todo = 0,
                    include = 0,
                },
                hide_line_numbers = 0,
                indent_levels = 1,
                tocdepth = 1,
                show_help = 0,

            }
        end,
}}
