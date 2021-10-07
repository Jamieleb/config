local wk = require("which-key")

wk.register({
	["<localleader>"] = {
		name = "lua commands",
		["\\"] = { "<cmd>luafile %<CR>", "luafile %" },
	},
}, {
	buffer = vim.api.nvim_get_current_buf(),
})
