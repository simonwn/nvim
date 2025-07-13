return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc",
				"query", "dockerfile", "c_sharp", "go", "java",
				"javascript", "json", "rust", "sql", "typescript", "html",
				"python", "css", "elixir", "eex", "ocaml", "heex", "latex",
				"toml", "yaml", "bash" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
