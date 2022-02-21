require("lightspeed").setup({
	jump_to_first_match = true,
	highlight_unique_chars = true,
	grey_out_search_area = true,
})

-- require("specs").setup({
-- 	show_jumps = true,
-- 	min_jump = 20,
-- 	popup = {
-- 		delay_ms = 0, -- delay before popup displays
-- 		inc_ms = 10, -- time increments used for fade/resize effects
-- 		blend = 10, -- starting blend, between 0-100 (fully transparent), see :h winblend
-- 		width = 120,
-- 		winhl = "PMenu",
-- 		fader = require("specs").linear_fader,
-- 		resizer = require("specs").empty_resizer,
-- 	},
-- 	ignore_filetypes = {},
-- 	ignore_buftypes = {
-- 		nofile = true,
-- 	},
-- })

require("nvim-tree").setup({
	update_focused_file = {
		enable = true,
	},
})

require("todo-comments").setup()

local Terminal = require("toggleterm.terminal").Terminal
local gobang = Terminal:new({
	cmd = "gobang",
	direction = "float",
	float_opts = {
		border = "double",
	},
	on_open = function(term)
		vim.cmd("startinsert!")
	end,
})

function _gobang_toggle()
	gobang:toggle()
end

local wk = require("which-key")
wk.register({
	q = {
		name = "quickfix",
		q = { "<cmd>TroubleToggle<CR>", "toggle Trouble" },
		o = { "<cmd>Trouble quickfix<CR>", "open trouble quickfix list" },
		c = { "<cmd>cclose<CR>", "close quickfix list" },
		O = { "<cmd>Trouble loclist<CR>", "open trouble location list" },
		C = { "<cmd>lclose<CR>", "close location list" },
		n = { '<cmd>lua require("trouble").next({ skip_groups = true, jump = true })<CR>', "Trouble next" },
		p = { '<cmd>lua require("trouble").previous({ skip_groups = true, jump = true })<CR>', "Trouble previous" },
		t = { "<cmd>TodoTrouble<CR>", "Trouble project todos" },
	},
	j = { "<C-f>", "page down" },
	k = { "<C-b>", "page up" },
	o = {
		name = "open",
		r = { "<cmd>RnvimrToggle<CR>", "ranger" },
		e = { "<cmd>NvimTreeToggle<CR>", "file explorer" },
		d = { "<cmd>lua _gobang_toggle()<CR>", "database explorer" },
	},
	h = {
		name = "harpoon",
		h = { "<cmd>lua require('harpoon.mark').add_file()<CR>", "mark current file" },
		e = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", "edit harpoon marks" },
		a = { "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", "navigate to file 1" },
		s = { "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", "navigate to file 2" },
		d = { "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", "navigate to file 3" },
		f = { "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", "navigate to file 4" },
	},
}, {
	prefix = "<leader>",
})
