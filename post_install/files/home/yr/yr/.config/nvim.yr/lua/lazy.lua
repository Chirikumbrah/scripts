require("lazy").setup({
	{ "nathom/filetype.nvim" },
	{ "nvim-lua/plenary.nvim" }, -- Useful lua functions used by lots of plugins
	{
		"windwp/nvim-autopairs",
		config = "require('configs.autopairs')",
	}, -- Autopairs, integrates with both cmp and treesitter
	{
		"numToStr/Comment.nvim",
		config = "require('configs.comment')",
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = "require('configs.colorizer')",
	},
	{
		"kyazdani42/nvim-tree.lua",
		dependencies = { "kyazdani42/nvim-web-devicons", lazy = true },
		cmd = "NvimTreeToggle",
		config = "require('configs.nvim-tree')",
	},
	{
		"akinsho/bufferline.nvim",
		dependencies = "kyazdani42/nvim-web-devicons",
		config = "require('configs.bufferline')",
	},
	{ "moll/vim-bbye" },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "kyazdani42/nvim-web-devicons" },
		config = "require('configs.lualine')",
	},
	{
		"akinsho/toggleterm.nvim",
		config = "require('configs.toggleterm')",
	},
	{
		"ahmedkhalf/project.nvim",
		config = "require('configs.project')",
	},
	{
		"lewis6991/impatient.nvim",
		config = "require('configs.impatient')",
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = "require('configs.indentline')",
	},
	{
		"goolord/alpha-nvim",
		config = "require('configs.alpha')",
	},
	{
		"folke/which-key.nvim",
		config = "require('configs.whichkey')",
	},

	-- Colorschemes
	{ "Mofiqul/dracula.nvim" },

	-- Cmp
	{
		"hrsh7th/nvim-cmp",
		config = "require('configs.cmp')",
	}, -- The completion plugin
	{ "hrsh7th/cmp-buffer" }, -- buffer completions
	{ "hrsh7th/cmp-path" }, -- path completions
	{ "saadparwaiz1/cmp_luasnip" }, -- snippet completions
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-nvim-lua" },

	-- Snippets
	{ "L3MON4D3/LuaSnip" }, --snippet engine
	{ "rafamadriz/friendly-snippets" }, -- a bunch of snippets to use

	-- LSP
	{
		"neovim/nvim-lspconfig",
		config = "require('configs.lsp')",
	}, -- enable LSP
	{ "williamboman/mason.nvim" }, -- simple to use language server installer
	{ "williamboman/mason-lspconfig.nvim" },
	{ "jose-elias-alvarez/null-ls.nvim" }, -- for formatters and linters
	{ "RRethy/vim-illuminate" },

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = "require('configs.telescope')",
	},
	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = true,
		run = ":TSUpdate",
		config = "require('configs.treesitter')",
	},
	{ "JoosepAlviste/nvim-ts-context-commentstring" },
	{
		"p00f/nvim-ts-rainbow",
		after = "nvim-treesitter",
	},
	{
		"windwp/nvim-ts-autotag",
		after = "nvim-treesitter",
	},
	{ "mg979/vim-visual-multi" },
	{
		"kylechui/nvim-surround",
		config = "require('configs.surround')",
	},

	-- Git
	{
		"lewis6991/gitsigns.nvim",
		config = "require('configs.gitsigns')",
	},
})
