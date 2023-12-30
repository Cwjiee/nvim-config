-- This file can be loaded by calling `lua require('plugins')` from your init.vim


-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.3',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'navarasu/onedark.nvim'
  use "tpope/vim-fugitive"
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  -- {'williamboman/mason.nvim'},
		  -- {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }
  use {
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
	  "neovim/nvim-lspconfig",
  }

  use({
	  "nvim-treesitter/nvim-treesitter-textobjects",
	  after = "nvim-treesitter",
	  requires = "nvim-treesitter/nvim-treesitter",
  })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
  use { "lewis6991/gitsigns.nvim" }
  use { "lambdalisue/fern.vim" } 
  use 'andweeb/presence.nvim'
  use 'vim-airline/vim-airline'  
  use 'vim-airline/vim-airline-themes' 
  -- use {'nvim-tree/nvim-tree.lua'}
  -- use {'nvim-tree/nvim-web-devicons'}
  -- use 'preservim/nerdtree'
  use 'prichrd/netrw.nvim'
  use 'ThePrimeagen/harpoon'
  use 'tpope/vim-rails'
  use 'tpope/vim-endwise'
  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'
  use 'fatih/vim-go'
  use 'eandrju/cellular-automaton.nvim'
  use 'edkolev/tmuxline.vim'

  use {
    'VonHeikemen/fine-cmdline.nvim',
    requires = {
      {'MunifTanjim/nui.nvim'}
    }
  }
end)
