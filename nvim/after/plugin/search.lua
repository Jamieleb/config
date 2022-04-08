require("custom")

local wk = require("which-key")
wk.register({
	s = {
		name = "search",
		["/"] = {
			"<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep for > ') })<CR>",
			"Grep code base",
		},
		f = { '<cmd>lua require("telescope.builtin").find_files()<CR>', "files" },
		F = {
			'<cmd>lua require("telescope.builtin").file_browser({ cwd = require("telescope.utils").buffer_dir() })<CR>',
			"file browser",
		},
		r = { "<cmd>Telescope lsp_references theme=ivy<CR>", "references" },
		R = { "<cmd>Telescope oldfiles<CR>", "recent files" },
		m = { '<cmd>lua require("telescope.builtin").marks()<CR>', "marks" },
		t = { '<cmd>lua require("telescope.builtin").colorscheme()<CR>', "themes" },
		g = { "<cmd>Telescope gh pull_request<CR>", "pull requests" },
		q = { '<cmd>lua require("telescope.builtin").quickfix()<CR>', "quickfix list" },
		l = { '<cmd>lua require("telescope.builtin").loclist()<CR>', "location list" },
		['"'] = { '<cmd>lua require("telescope.builtin").registers()<CR>', "registers" },
		[";"] = {
			'<cmd>lua require("telescope.builtin").command_history(require("telescope.themes").get_ivy())<CR>',
			"recent commands",
		},
		s = { '<cmd>lua require("telescope.builtin").lsp_document_symbols()<CR>', "document symbols" },
		S = { '<cmd>lua require("telescope.builtin").lsp_workspace_symbols()<CR>', "workspace symbols" },
		a = {
			'<cmd>lua require("telescope.builtin").lsp_code_actions(require("telescope.themes").get_dropdown({}))<CR>',
			"code actions",
		},
		k = { '<cmd>lua require("telescope.builtin").lsp_definitions()<CR>', "definitions" },
		b = { '<cmd>lua require("telescope.builtin").buffers()<CR>', "buffers" },
		e = {
			'<cmd>lua require("telescope.builtin").lsp_document_diagnostics(require("telescope.themes").get_ivy())<CR>',
			"document diagnostics",
		},
		h = { '<cmd>lua require("telescope.builtin").help_tags()<CR>', "help tags" },
		c = { '<cmd>lua require("telescope.builtin").git_bcommits()<CR>', "buffer commits" },
		[":"] = {
			'<cmd>lua require("telescope.builtin").builtin(require("telescope.themes").get_ivy())<CR>',
			"Telescope builtins",
		},
		z = { "<cmd>Telescope spell_suggest theme=ivy<CR>", "spelling suggestions" },
		w = { '<cmd>lua require("custom.telescope").search_word()<CR>', "word under cursor" },
		["."] = { '<cmd>lua require("custom.telescope").search_dotfiles()<CR>', "dotfiles" },
		T = { "<cmd>TodoTelescope<CR>", "todos" },
		p = {
			"<cmd>Telescope projects<CR>",
			"search projects",
		},
	},
	["/"] = {
		'<cmd>lua require("telescope.builtin").live_grep(require("telescope.themes").get_ivy())<CR>',
		"live grep",
	},
	["<leader>"] = { '<cmd>lua require("telescope.builtin").git_files()<CR>', "project search" },
	[";"] = {
		'<cmd>lua require("telescope.builtin").commands(require("telescope.themes").get_ivy())<CR>',
		"command palette",
	},
}, {
	prefix = "<leader>",
})
