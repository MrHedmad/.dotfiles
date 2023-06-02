local builtin = require('telescope.builtin')

-- Allow easier access to telescope on the corne
-- Reminder > 'Navigate Tree'
vim.keymap.set('n', '<leader>nt', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps',  function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

