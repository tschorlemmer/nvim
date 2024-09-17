local keybinds = {}

function keybinds.general()
    local wk = require("which-key")
    local builtin = require('telescope.builtin')
    local harpoon = require("harpoon")
    local nvim_tree = require("nvim-tree.api").tree
    wk.add({
        -- General Maps
        { "jj",         "<Esc>",                                                     mode = "i", desc = "Exit Insert" },
        { "jj",         "<C-\\><C-n>",                                               mode = "t", desc = "Exit Terminal" },
        { "jk",         "<C-x>s",                                                    mode = "i", desc = "Spell Check Word" },
        { "J",          "mzJ`z",                                                     mode = "n", desc = "Collapse Line" },
        { "<C-d>",      "<C-d>zz",                                                   mode = "n", desc = "Down Half Page" },
        { "<C-u>",      "<C-u>zz",                                                   mode = "n", desc = "Up Half Page" },
        { "n",          "nzzzv",                                                     mode = "n", desc = "Next Center" },
        { "N",          "Nzzzv",                                                     mode = "n", desc = "Previous Center" },
        { "<leader>j",  "o<Esc>",                                                    mode = "n", desc = "Add Line Below" },
        { "<leader>k",  "O<Esc>",                                                    mode = "n", desc = "Add Line Above" },
        { "<C-s>",      "<Esc>:w<CR>a",                                              mode = "i", desc = "Save" },
        { "<C-J>",      "<C-w>j",                                                    mode = "n", desc = "Move Down Window" },
        { "<C-K>",      "<C-w>k",                                                    mode = "n", desc = "Move Up Window" },
        { "<C-H>",      "<C-w>h",                                                    mode = "n", desc = "Move Left Window" },
        { "<C-L>",      "<C-w>l",                                                    mode = "n", desc = "Move Right Window" },
        { "J",          ":m '>+1<CR>gv=gv",                                          mode = "v", desc = "Move Line Down" },
        { "K",          ":m '<-2<CR>gv=gv",                                          mode = "v", desc = "Move Line Down" },

        -- Leader maps
        { "<leader>",   group = "Leader" },
        { "<leader>w",  ":set wrap!<CR>",                                            mode = "n", desc = "Toggle Wrap" },
        { "<leader>s",  ":setlocal spell! spelllang=en_us<CR>",                      mode = "n", desc = "Toggle Spell" },

        -- Tab maps
        { "<leader>t",  group = "Tabs" },
        { "<leader>tq", ":tabclose<CR>",                                             mode = "n", desc = "Close Tab" },
        { "<leader>to", ":tabonly<CR>",                                              mode = "n", desc = "Tab Only" },
        { "<leader>tm", ":tabmove<Space>",                                           mode = "n", desc = "Move This Tab" },
        { "<leader>1",  ":tabnext 1<CR>",                                            mode = "n", desc = "Tab 1" },
        { "<leader>2",  ":tabnext 2<CR>",                                            mode = "n", desc = "Tab 2" },
        { "<leader>3",  ":tabnext 3<CR>",                                            mode = "n", desc = "Tab 3" },
        { "<leader>4",  ":tabnext 4<CR>",                                            mode = "n", desc = "Tab 4" },
        { "<leader>5",  ":tabnext 5<CR>",                                            mode = "n", desc = "Tab 5" },
        { "<leader>6",  ":tabnext 6<CR>",                                            mode = "n", desc = "Tab 6" },
        { "<leader>7",  ":tabnext 7<CR>",                                            mode = "n", desc = "Tab 7" },
        { "<leader>8",  ":tabnext 8<CR>",                                            mode = "n", desc = "Tab 8" },
        { "<leader>9",  ":tabnext 9<CR>",                                            mode = "n", desc = "Tab 9" },
        { "<leader>th", ":tabprev<CR>",                                              mode = "n", desc = "Tab Left" },
        { "<leader>tl", ":tabnext<CR>",                                              mode = "n", desc = "Tab Right" },
        { "<leader>tt", ":tabnew<CR>",                                               mode = "n", desc = "New Tab" },
        { "<leader>tn", ":tabnew<CR>",                                               mode = "n", desc = "New Tab" },
        { "<leader>tp", "<C-Tab>",                                                   mode = "n", desc = "Previous Tab" },

        -- Telescope maps
        { "<leader>f",  group = "Find" },
        { '<leader>ff', builtin.find_files,                                          mode = 'n', desc = 'find_files' },
        { '<leader>fg', builtin.live_grep,                                           mode = 'n', desc = 'live_grep' },
        { '<leader>fk', builtin.keymaps,                                             mode = 'n', desc = 'find files' },
        { '<leader>fj', builtin.current_buffer_fuzzy_find,                           mode = 'n', desc = 'current_buffer_fuzzy_find' },
        { '<leader>fq', builtin.quickfix,                                            mode = 'n', desc = 'quickfix' },
        { '<leader>fh', builtin.help_tags,                                           mode = 'n', desc = 'help_tags' },
        { '<leader>fm', builtin.man_pages,                                           mode = 'n', desc = 'man_pages' },

        -- Harpoon Maps
        { "<leader>h",  group = "Harpoon" },
        { "<leader>ha", function() harpoon:list():add() end,                         mode = "n", desc = "Add" },
        { "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, mode = "n", desc = "List" },
        { "<leader>h1", function() harpoon:list():select(1) end,                     mode = "n", desc = "Goto 1" },
        { "<leader>h2", function() harpoon:list():select(2) end,                     mode = "n", desc = "Goto 2" },
        { "<leader>h3", function() harpoon:list():select(3) end,                     mode = "n", desc = "Goto 3" },
        { "<leader>h4", function() harpoon:list():select(4) end,                     mode = "n", desc = "Goto 4" },
        { "<leader>h5", function() harpoon:list():select(5) end,                     mode = "n", desc = "Goto 5" },

        -- Nvim Tree
        { "<leader>d",  function() nvim_tree.toggle({ find_file = true }) end,       mode = "n", desc = "Toggle Tree" },

        -- LSP
        { 'gl',         function() vim.diagnostic.open_float() end,                  mode = 'n', desc = 'Open Diagnostic' },
        { '[d',         function() vim.diagnostic.goto_prev() end,                   mode = 'n', desc = 'Previous Diagnostic' },
        { ']d',         function() vim.diagnostic.goto_next() end,                   mode = 'n', desc = 'Next Diagnostic' },

        -- Undo Tree
        { '<leader>u',  ':UndotreeToggle<CR>',                                       mode = 'n', desc = 'Toggle Undotree' },


    })
end

function keybinds.lsp(buf)
    local wk = require("which-key")
    wk.add({
        { 'K',    function() vim.lsp.buf.hover() end,                  buffer = buf, mode = 'n',          desc = 'Hover' },
        { 'gd',   function() vim.lsp.buf.definition() end,             buffer = buf, mode = 'n',          desc = 'Goto Definition' },
        { 'gD',   function() vim.lsp.buf.declaration() end,            buffer = buf, mode = 'n',          desc = 'Goto Declaration' },
        { 'gi',   function() vim.lsp.buf.implementation() end,         buffer = buf, mode = 'n',          desc = 'Goto Implementation' },
        { 'go',   function() vim.lsp.buf.type_definition() end,        buffer = buf, mode = 'n',          desc = 'Goto Type Definition' },
        { 'gr',   function() vim.lsp.buf.references() end,             buffer = buf, mode = 'n',          desc = 'References' },
        { 'gs',   function() vim.lsp.buf.signature_help() end,         buffer = buf, mode = 'n',          desc = 'Signature Help' },
        { '<F2>', function() vim.lsp.buf.rename() end,                 buffer = buf, mode = 'n',          desc = 'Rename' },
        { '<F3>', function() vim.lsp.buf.format({ async = true }) end, buffer = buf, mode = { 'n', 'x' }, desc = 'Format' },
        { '<F4>', function() vim.lsp.buf.code_action() end,            buffer = buf, mode = 'n',          desc = 'Code Action' },
        { '<F5>', function() require("lint").try_lint() end,           buffer = buf, mode = 'n',          desc = 'Linter' },
    })
end

function keybinds.nvim_tree(buf, api)
    local wk = require("which-key")
    wk.add({
        -- custom mappings
        { "?",     api.tree.toggle_help,         buffer = buf, mode = "n", desc = "Toggle Help" },
        { ".",     api.tree.change_root_to_node, buffer = buf, mode = "n", desc = "Change Root" },
        { "<C-.>", api.node.run.cmd,             buffer = buf, mode = "n", desc = "Run Command" },
        { "v",     api.node.open.vertical,       buffer = buf, mode = "n", desc = "Open Veritical" },
    })
end

-- function keybinds.vimtex(buf)
--     local wk = require("which-key")
--     wk.add({
--         -- VimTex
--         { '<leader>l',  group = 'VimTex' },
--         { '<leader>ls', ':VimtexCompileSS<CR>', mode = 'n', desc = 'Single Shot Compile to PDF' },
--     })
-- end
--
return keybinds
