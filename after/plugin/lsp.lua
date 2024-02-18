local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({ buffer = bufnr })
end)


-- using mason
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        lsp.default_setup,
    },
})


local function isempty(s)
    return s == nil or s == ""
end
local function use_if_defined(val, fallback)
    return val ~= nil and val or fallback
end


-- custom python provider
local conda_prefix = os.getenv("CONDA_PREFIX")
if not isempty(conda_prefix) then
    vim.g.python_host_prog = use_if_defined(vim.g.python_host_prog, conda_prefix .. "/bin/python")
    vim.g.python3_host_prog = use_if_defined(vim.g.python3_host_prog, conda_prefix .. "/bin/python")
else
    vim.g.python_host_prog = use_if_defined(vim.g.python_host_prog, "python")
    vim.g.python3_host_prog = use_if_defined(vim.g.python3_host_prog, "python3")
end


lsp.setup()

local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'}
  },
  mapping = cmp.mapping.preset.insert({
    ['kk'] = cmp.mapping.confirm({ select = true }),
  }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})
