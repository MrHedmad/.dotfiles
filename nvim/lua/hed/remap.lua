-- Map the leader key to the very simple space
-- Works just in normal mode. Referred to with <leader>
vim.g.mapleader = " "
-- Fast jump to file explorer
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex)

-- Corne compatibility layer
vim.keymap.set("i", "uu", "<Esc>") -- uu is Escape
-- Move between panes using the arrow keys
vim.keymap.set("n", "<S-Left>", "<C-w>h")
vim.keymap.set("n", "<S-Right>", "<C-w>l")
vim.keymap.set("n", "<S-Up>", "<C-w>k")
vim.keymap.set("n", "<S-Down>", "<C-w>j")


-- Use tab to enter completions once you select them
local cmp = require('cmp')
cmp.setup({
    mapping = {
        ['<tab>'] = cmp.mapping.confirm({select = true})
        }
    }
)


