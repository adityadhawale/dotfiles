return require('packer').startup(function()
    use 'williamboman/mason.nvim'    
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
    use 'simrat39/rust-tools.nvim'

    use 'hrsh7th/nvim-cmp'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    use 'nvim-treesitter/nvim-treesitter'

    use 'm-demare/hlargs.nvim'

    use { "catppuccin/nvim", as = "catppuccin" }

    use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} }, tag = '0.1.8' }

    -- Reformatter
    use { 'ckipp01/stylua-nvim', run = 'cargo install stylua' }

    -- For oil nvim
    use 'nvim-tree/nvim-web-devicons'
    use({
	    "stevearc/oil.nvim",
	    config = function()
	        require("oil").setup()
	    end,
    })

    use({
      "echasnovski/mini.icons",
      config = function()
        require("mini.icons").setup()
      end,
    })

    -- Neogit
    use "TimUntersberger/neogit"

    -- For Github Copilot
    use {
	"zbirenbaum/copilot.lua",
    	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup()
	end,
    }

    -- Git conflict markers
    use {'akinsho/git-conflict.nvim', tag="*", config = function()
        require("git-conflict").setup()
    end,
    }

end)
