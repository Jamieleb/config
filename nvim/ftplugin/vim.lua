local wk = require("which-key")

wk.register({
	["<localleader>"] = {
		name = "vim commands",
		["\\"] = { "<cmd>source %<CR>", "source %" },
	},
}, {
	buffer = vim.api.nvim_get_current_buf(),
})
