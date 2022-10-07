require("zen-mode").setup()
require("reach").setup({ notifications = true })

local true_zen = require("true-zen")

true_zen.setup({
	ui = {
		bottom = {
			laststatus = 0,
			ruler = false,
			showmode = false,
			showcmd = false,
			cmdheight = 1,
		},
		top = {
			showtabline = 0,
		},
		left = {
			number = false,
			relativenumber = false,
			signcolumn = "no",
		},
	},
	modes = {
		ataraxis = {
			left_padding = 32,
			right_padding = 32,
			top_padding = 1,
			bottom_padding = 1,
			ideal_writing_area_width = { 0 },
			auto_padding = true,
			keep_default_fold_fillchars = true,
			custom_bg = { "none", "" },
			bg_configuration = true,
			quit = "untoggle",
			ignore_floating_windows = true,
			affected_higroups = {
				NonText = true,
				FoldColumn = true,
				ColorColumn = true,
				VertSplit = true,
				StatusLine = true,
				StatusLineNC = true,
				SignColumn = true,
			},
		},
		focus = {
			margin_of_error = 5,
			focus_method = "experimental",
		},
	},
	integrations = {
		vim_gitgutter = false,
		galaxyline = false,
		tmux = false,
		gitsigns = false,
		nvim_bufferline = false,
		limelight = false,
		twilight = false,
		vim_airline = false,
		vim_powerline = false,
		vim_signify = false,
		express_line = false,
		lualine = false,
		lightline = false,
		feline = false,
	},
	misc = {
		on_off_commands = false,
		ui_elements_commands = false,
		cursor_by_mode = false,
	},
})

local wk = require("which-key")
wk.register({
	b = {
		name = "buffer",
		N = { "<cmd>enew<CR>", "new buffer" },
		k = { "<cmd>BufferClose<CR>", "kill current buffer" },
		n = { "<cmd>BufferNext<CR>", "next buffer" },
		L = { "<cmd>BufferCloseBuffersRight<CR>", "close buffers to right" },
		H = { "<cmd>BufferCloseBuffersLeft<CR>", "close buffers to left" },
		p = { "<cmd>BufferPrevious<CR>", "close buffers to left" },
		g = { "<cmd>BufferPick<CR>", "Buffer Pick" },
		o = { "<cmd>BufferCloseAllButCurrent<CR>", "close other buffers" },
		b = { "<cmd>Telescope buffers previewer=false theme=ivy<CR>", "Telescope buffers" },
		l = { "<C-^>", "last buffer" },
		["/"] = {
			"<cmd> Telescope current_buffer_fuzzy_find previewer=false theme=ivy<CR>",
			"search current buffer",
		},
		m = { "<cmd>TZFocus<CR>", "focus mode" },
		f = { "<cmd>TZAtaraxis<CR>", "focus mode" },
		j = { "<cmd>lua require('reach').buffers({ handle = 'dynamic' })<CR>", "Buffer Switcher" },
	},
	x = {
		name = "scratch",
		x = { "<cmd>Scratch<CR>", "open scratch buffer" },
		X = { "<cmd>Scratch!<CR>", "clear and open scratch buffer" },
		i = { "<cmd>ScratchInsert<CR>", "open scratch buffer in insert mode" },
		I = { "<cmd>ScratchInsert!<CR>", "clear and open scratch buffer in insert mode" },
		p = { "<cmd>ScratchPreview<CR>", "preview scratch buffer" },
	},
}, {
	prefix = "<leader>",
})
