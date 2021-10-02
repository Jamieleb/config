require("colorizer").setup()
require("spellsitter").setup()

require("revj").setup({
	keymaps = {
		operator = "K",
		line = "<leader>K",
		visual = "<Leader>K",
	},
})

require("indent_blankline").setup({
	char = "|",
	buftype_exclude = { "terminal" },
	filetype_exclude = { "dashboard", "help" },
	show_current_context = true,
	use_treesitter = true,
	show_first_indent_level = false,
})

local wk = require("which-key")
wk.register({
	K = "which_key_ignore",
})
