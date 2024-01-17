-- Flags to be set with various options
vim.opt.nu = true
vim.opt.relativenumber = true

local function settab (ind)
    vim.opt.tabstop = ind
    vim.opt.softtabstop = ind
    vim.opt.shiftwidth = ind
    vim.opt.expandtab = true
end

vim.opt.smartindent = true
settab(4)

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- Autocommands
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local hed_autocmds = augroup('hedmad', {clear = true})
autocmd("BufEnter", {
    group = hed_autocmds,
    pattern = {"*.R", "*.r"},
    callback = function ()
        print "Entered R file"
        settab(2)
    end
})
autocmd("BufLeave", {
    group = hed_autocmds,
    pattern = {"*.R", "*.r"},
    callback = function ()
        print "Exited R file"
        settab(4)
    end
})
