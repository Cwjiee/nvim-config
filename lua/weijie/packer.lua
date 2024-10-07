local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use "nvim-lua/plenary.nvim"
  use 'folke/zen-mode.nvim'
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use "lewis6991/gitsigns.nvim"
  -- use 'andweeb/presence.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'tpope/vim-endwise'
  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'
  use 'fatih/vim-go'
  use 'eandrju/cellular-automaton.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use "tpope/vim-fugitive"
  use 'lervag/vimtex'
  use 'fladson/vim-kitty'
  use 'folke/flash.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'rcarriga/nvim-notify'
  use({
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup()
    end,
  })

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  }

  use {
    "nvim-treesitter/nvim-treesitter-textobjects",
    after = "nvim-treesitter",
    requires = "nvim-treesitter/nvim-treesitter",
  }

  use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"}, {'nvim-telescope/telescope.nvim'} }
  }

--   use {
--     'VonHeikemen/fine-cmdline.nvim',
--     requires = {
--       {'MunifTanjim/nui.nvim'}
--     }
--   }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  }
  
  use {
    "kdheepak/lazygit.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
    },
  }

  use({
    "epwalsh/obsidian.nvim",
    tag = "*",
    requires = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("obsidian").setup({
        workspaces = {
          {
            name = "personal",
            path = "~/Documents/obsidian/main",
          },
        },
      })
    end,
  })
end)
