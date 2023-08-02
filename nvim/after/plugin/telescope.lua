local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

-- Allow easier access to telescope on the corne
-- Reminder > 'Navigate Tree'
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>gg',  function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- In the corne, I have no Esc. You need an explicit Esc key to 
-- exit from telescope, not just exit to normal mode.
-- This makes it so that if you exit insert mode (the default
-- when you open telescope) you actually exit telescope
-- altogether (it overrides the uu signal).
require("telescope").setup({
    defaults = {
        mappings = {
            i = {
                ["uu"] = actions.close,
            },
        },
    },
})

