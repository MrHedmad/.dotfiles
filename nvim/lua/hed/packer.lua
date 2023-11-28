-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope :: A fuzzy finder for files
  -- config: /lua/after/plugins/telescope.lua
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Color scheme :: nordic by AlexvZyl
  -- github.com/AlexvZyl/nordic.nvim
  -- config: /lua/after/plugins/colors.lua
  use {'AlexvZyl/nordic.nvim'}

  -- Treesitter :: A synthax highlighting engine/tool
  -- makes it possible to install a bunch of tree-sitter
  -- compatible plugins and stuff.
  -- It works by generating a tree of keywords, which then the
  -- various engines can look at and manipulate.
  -- config: /lua/after/plugins/treesitter.lua
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- Harpoon :: A way to swap between frequently used file *fast*
  -- config: /lua/after/plugins/harpoon.lua
  use('theprimeagen/harpoon')

  -- Undotree :: See your undo history, even if branching.
  -- You can then revert to any previous state. Works a bit like
  -- git log.
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  -- Highlght of indentation
  use 'lukas-reineke/indent-blankline.nvim'

  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  };

  -- Rust inline type hints
  use 'simrat39/rust-tools.nvim'

}
end)
