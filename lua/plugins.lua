return require('packer').startup(function(use)
  -- Configurations will go here soon
 use 'wbthomason/packer.nvim'
 use 'williamboman/mason.nvim'
 use 'williamboman/mason-lspconfig.nvim'
 use 'neovim/nvim-lspconfig'
  -- Hrsh7th Code Completion Suite
     use 'hrsh7th/nvim-cmp'
     use 'hrsh7th/cmp-nvim-lsp'
     use 'hrsh7th/cmp-nvim-lua'
     use 'hrsh7th/cmp-nvim-lsp-signature-help'
     use 'hrsh7th/cmp-path'
     use 'hrsh7th/cmp-buffer'
     use 'hrsh7th/cmp-vsnip'
     use 'hrsh7th/vim-vsnip'
--   use {
--  		'hrsh7th/cmp-vsnip',
--  		after = 'nvim-cmp',
--  		requires = {
--  			'hrsh7th/vim-vsnip',
--			'hrsh7th/vim-vsnip-integ',
--      			{
--        		'rafamadriz/friendly-snippets',
--        		after = 'cmp-vsnip'
--      			}
--   		}
--  	}
 -- VS code theme for styling
 use {
    "askfiy/visual_studio_code",
    config = function()
        require("visual_studio_code").setup({
            mode = "dark",
        })
    end,
  }
 -- File explorer tree
 use {
  'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
 }
end)
