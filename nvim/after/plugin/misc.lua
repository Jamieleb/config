require("colorizer").setup()
-- require("spellsitter").setup()

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

require("neorg").setup({
	-- Tell Neorg what modules to load
	load = {
		["core.defaults"] = {}, -- Load all the default modules
		["core.norg.completion"] = {
			config = {
				engine = "nvim-cmp",
			},
		},
		["core.norg.concealer"] = {}, -- Allows for use of icons
		["core.norg.dirman"] = { -- Manage your directories with Neorg
			config = {
				workspaces = {
					my_workspace = "~/neorg",
				},
			},
		},
	},
})

local wk = require("which-key")
wk.register({
	K = "which_key_ignore",
})
