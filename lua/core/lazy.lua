local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--branch=stable",
		lazyrepo,
		lazypath,
	})
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		"ellisonleao/gruvbox.nvim",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-tree.lua",
		"nvim-tree/nvim-web-devicons",
		{
			'nvim-telescope/telescope.nvim',
			dependencies = { 'nvim-lua/plenary.nvim' },
		},
		"m4xshen/autoclose.nvim",
 		"kylechui/nvim-surround",
		{
  			"hrsh7th/nvim-cmp",
  			version = false,
  			event = "InsertEnter",
  			dependencies = {
    			"hrsh7th/cmp-nvim-lsp",
    			"hrsh7th/cmp-buffer",
			    "hrsh7th/cmp-path",
			}
		},
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
		--"SergioRibera/cmp-dotenv",
		--"lukas-reineke/cmp-under-comparator",
	},
	defaults = {
		lazy = false,
		version = false,
	},
	checker = {
		enabled = true,
		notify = false,
	},
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
	install = { colorscheme = { "gruvbox" } },
})
