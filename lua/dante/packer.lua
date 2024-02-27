-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	use("thePrimeagen/harpoon")

	use("mbbill/undotree")

	use("tpope/vim-fugitive")

use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
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
-- Statusline
--use 'feline-nvim/feline.nvim'

use 'nvim-tree/nvim-web-devicons'
-- Inicio 
--Alinear
use 'junegunn/vim-easy-align'
-- Cerrar parentesis
use 'rstacruz/vim-closer'
--LSP
use 'williamboman/nvim-lsp-installer'
--Status;ne
use 'beauwilliams/statusline.lua'
--ALE
use 'dense-analysis/ale'
-- These optional plugins should be loaded directly because of a bug in Packer lazy loading
use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
-- correr python
use 'MunifTanjim/nui.nvim'
use 'smzm/hydrovim'
--Obsidian
use({
  "epwalsh/obsidian.nvim",
  tag = "*",  -- recommended, use latest release instead of latest commit
  requires = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  config = function()
    require("obsidian").setup({
      workspaces = {
        {
          name = "personal",
          path = "D:/Sexto_Semestre/apuntes",
        },
      },

      -- see below for full list of options 👇
    })
  end,
})
-- Cheatsheet
use {
  'sudormrfbin/cheatsheet.nvim',

	  requires = {
	    {'nvim-lua/popup.nvim'},
    {'nvim-lua/plenary.nvim'},
  }
}
-- Notificaciones y terminal 
  
    use {'stevearc/dressing.nvim'}

use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = { 
      "MunifTanjim/nui.nvim",
       "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  }
	--INICIO STARTIFY  
	use 'mhinz/vim-startify'
	-- INICIO DASHBOARD
 use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
}
--Color
use { "ellisonleao/gruvbox.nvim" }

--Margen
use "lukas-reineke/virt-column.nvim"

--Antes de cerrar te pida confirmar
use {
  "yutkat/confirm-quit.nvim",
  event = "CmdlineEnter",
  config = function() require "confirm-quit".setup() end,
}
-- Comandos bonitos
use "github/copilot.vim"
--use 'romgrk/barbar.nvim'
--use 'tamton-aquib/staline.nvim'
use 'mhinz/vim-signify'

use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}

use {'krivahtoo/silicon.nvim'}
end)
