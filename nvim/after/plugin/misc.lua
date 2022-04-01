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

local shake = require("shake")

shake.register_keybindings(shake.api.to_constant_case, {
	current_word = "crn",
	visual = "crn",
	operator = "cron",
	lsp_rename = "crN",
})
shake.register_keybindings(shake.api.to_camel_case, {
	current_word = "crc",
	visual = "crc",
	operator = "croc",
	lsp_rename = "crC",
})
shake.register_keybindings(shake.api.to_dash_case, {
	current_word = "crd",
	visual = "crd",
	operator = "crod",
	lsp_rename = "crD",
})
shake.register_keybindings(shake.api.to_pascal_case, {
	current_word = "crp",
	visual = "crp",
	operator = "crop",
	lsp_rename = "crP",
})
shake.register_keybindings(shake.api.to_snake_case, {
	current_word = "crs",
	visual = "crs",
	operator = "cros",
	lsp_rename = "crS",
})

shake.register_replace_command("Subs", {
	shake.api.to_upper_case,
	shake.api.to_lower_case,
	shake.api.to_snake_case,
	shake.api.to_dash_case,
	shake.api.to_constant_case,
	shake.api.to_dot_case,
	shake.api.to_phrase_case,
	shake.api.to_camel_case,
	shake.api.to_pascal_case,
	shake.api.to_title_case,
	shake.api.to_path_case,
})

local wk = require("which-key")
wk.register({
	K = "which_key_ignore",
})
