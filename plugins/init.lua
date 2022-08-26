return {

	-- improved movement with lightspeed
	["ggandor/lightspeed.nvim"] = {},

	-- just let me repeat things
	["tpope/vim-repeat"] = {},

	-- enable :G :Git
	["tpope/vim-fugitive"] = {},
	-- :Gbrowse support for github
	["tpope/vim-rhubarb"] = {},

	-- keep my windows stable, please
	["luukvbaal/stabilize.nvim"] = {
		config = function()
			require("stabilize").setup()
		end,
	},

	-- surrounding in vim, as I remember it
	["kylechui/nvim-surround"] = {
		config = function()
			require("nvim-surround").setup()
		end,
	},

	-- dashboard, please!
	["goolord/alpha-nvim"] = {
		disable = false,
		config = function()
			require("custom.plugins.alpha-nvim")
		end,
	},

	["neovim/nvim-lspconfig"] = {
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.plugins.lspconfig")
		end,
	},

	-- overrides handles config for mason
	-- but need to ensure it's installed correctly with plugins I think
	["williamboman/mason.nvim"] = {},
	["williamboman/mason-lspconfig.nvim"] = {},

	-- Formatting with null-ls
	["jose-elias-alvarez/null-ls.nvim"] = {
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.null-ls")
		end,
	},

	-- overwriting default nvim-tree setup for vinegar style
	["kyazdani42/nvim-tree.lua"] = {
		config = function()
			require("custom.plugins.nvimtree")
		end,
	},

	-- enable linting/formatting with LSP
	["folke/trouble.nvim"] = {
		-- after = "null-ls",
		config = function()
			require("custom.plugins.trouble")
		end,
	},

	-- zen mode
	["Pocco81/TrueZen.nvim"] = {
		-- after = "null-ls",
		config = function()
			require("custom.plugins.truezen")
		end,
	},
}
