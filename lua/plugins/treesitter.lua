return {
	{
		"nvim-treesitter/nvim-treesitter",
    	build = ":TSUpdate",
    	config = function () 
      		local configs = require("nvim-treesitter.configs")

      		configs.setup({
          		ensure_installed = {
					"astro",
					"bash",
					"c", 
					"c_sharp",
					"css",
					"dockerfile",
					"git_config",
					"gitignore",
					"go",
					"html",
					"java",
					"javascript",
					"json",
					"json5",
					"lua",
					"markdown",
					"nix",
					"php",
					"python",
					"ruby",
					"rust",
					"scss",
					"sql",
					"svelte",
					"typescript",
				},
          		sync_install = false,
          		highlight = { enable = true },
          		indent = { enable = true },  
        	})
    	end
	}
}
