require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = {
		"astro",
		"bashls",
		"clangd",
		"css_variables",
		"cssls",
		"docker_compose_language_service",
		"dockerls",
		"gitlab_ci_ls",
		"gopls",
		"html",
		"htmx",
		"jsonls",
		"lua_ls",
		"marksman",
		"phpactor",
		"ruby_lsp",
		"rust_analyzer",
		"sqlls",
		"svelte",
		"tailwindcss",
		"ts_ls",
		"vimls"
	},
}
require("lspconfig").lua_ls.setup {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			}
		}
	}
}
