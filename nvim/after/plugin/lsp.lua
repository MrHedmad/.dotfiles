local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    -- I don't want the Up and Down keys to be used, see below
  lsp.default_keymaps({buffer = bufnr, omit = {'<Up>', '<Down>'}})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

-- What autocomplete engines should be installed by default?
lsp.ensure_installed({
   'rust_analyzer', -- rust official server
   'lua_ls', -- for lua
   'pylsp', -- for python
   "r_language_server" -- the only one for r, takes a fuckton of time compiling
})


lsp.setup()

-- Python lsp server disable all the linting
require('lspconfig').pylsp.setup {
  on_attach = on_attach,
  flags = {
    -- This will be the default in neovim 0.7+
    debounce_text_changes = 150,
  },
  settings = {
    -- configure plugins in pylsp
    pylsp = {
      plugins = {
        pyflakes = {enabled = true},
        pylint = {enabled = false},
        autopep8 = {enabled = false},
        pycodestyle = {enabled = false},
      },
    },
  }
}

-- Autocompletion things
-- see https://github.com/VonHeikemen/lsp-zero.nvim/blob/v2.x/doc/md/autocomplete.md
local cmp = require('cmp')
local cmp_select_opts = {behavior = cmp.SelectBehavior.Select}

-- These are actually the default mappings 
cmp.setup({
    mapping = {
    ['<C-y>'] = cmp.mapping.confirm({select = true}),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    -- These lines are the default, but since I omit them above,
    -- they do not work.
    -- ['<Up>'] = cmp.mapping.select_prev_item(cmp_select_opts),
    -- ['<Down>'] = cmp.mapping.select_next_item(cmp_select_opts),
    ['<Tab>'] = cmp.mapping.select_next_item(cmp_select_opts),
    ['<CR>'] = cmp.mapping.confirm({select = false}),
    ['<C-p>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item(cmp_select_opts)
      else
        cmp.complete()
      end
    end),
    ['<C-n>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_next_item(cmp_select_opts)
      else
        cmp.complete()
      end
    end),
  },
})


