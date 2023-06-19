vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "uu", "<Esc>")

-- Use tab to enter completions once you select them
local cmp = require('cmp')
cmp.setup({
    mapping = {
        ['<tab>'] = cmp.mapping.confirm({select = true})
        }
    }
)

