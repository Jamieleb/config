local Terminal = require("toggleterm.terminal").Terminal
local run = Terminal:new({ cmd = "cargo run", hidden = true, close_on_exit = false })
local wk = require("which-key")

function _run()
	run:toggle()
end

wk.register({
	["<localleader>"] = {
		name = "rust commands",
		r = { "<cmd>lua _run()<CR>", "toggle cargo run" },
	},
}, {
	buffer = vim.api.nvim_get_current_buf(),
})
