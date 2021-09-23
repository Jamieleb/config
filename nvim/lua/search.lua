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
		F = { '<cmd>lua require("telescope.builtin").file_browser()<CR>', "file browser" },
		R = { "<cmd>Telescope oldfiles<CR>", "recent files" },
		m = { '<cmd>lua require("telescope.builtin").marks()<CR>', "marks" },
		t = { '<cmd>lua require("telescope.builtin").colorscheme()<CR>', "themes" },
		b = { '<cmd>lua require("telescope.builtin").current_buffer_fuzzy_find()<CR>', "current buffer" },
		g = { "<cmd>Telescope gh pull_request<CR>", "pull requests" },
		q = { '<cmd>lua require("telescope.builtin").quickfix()<CR>', "quickfix list" },
		l = { '<cmd>lua require("telescope.builtin").loclist()<CR>', "location list" },
		['"'] = { '<cmd>lua require("telescope.builtin").registers()<CR>', "registers" },
		[";"] = { '<cmd>lua require("telescope.builtin").command_history()<CR>', "recent commands" },
		s = { '<cmd>lua require("telescope.builtin").lsp_document_symbols()<CR>', "document symbols" },
		S = { '<cmd>lua require("telescope.builtin").lsp_workspace_symbols()<CR>', "workspace symbols" },
		a = {
			'<cmd>lua require("telescope.builtin").lsp_code_actions(require("telescope.themes").get_dropdown({}))<CR>',
			"code actions",
		},
		k = { '<cmd>lua require("telescope.builtin").lsp_definitions()<CR>', "definitions" },
		b = { '<cmd>lua require("telescope.builtin").buffers()<CR>', "buffers" },
		e = { '<cmd>lua require("telescope.builtin").lsp_document_diagnostics()<CR>', "document diagnostics" },
		h = { '<cmd>lua require("telescope.builtin").help_tags()<CR>', "help tags" },
		c = { '<cmd>lua require("telescope.builtin").git_bcommits()<CR>', "buffer commits" },
		[":"] = { '<cmd>lua require("telescope.builtin").builtin()<CR>', "Telescope builtins" },
		z = { '<cmd>lua require("telescope.builtin").spell_suggest()<CR>', "spelling suggestions" },
		w = { '<cmd>lua require("custom.telescope").search_word()<CR>', "word under cursor" },
		["."] = { '<cmd>lua require("custom.telescope").search_dotfiles()<CR>', "dotfiles" },
		T = { "<cmd>TodoTelescope<CR>", "todos" },
	},
	["/"] = { '<cmd>lua require("telescope.builtin").live_grep()<CR>', "live grep" },
	["<leader>"] = { '<cmd>lua require("telescope.builtin").git_files()<CR>', "project search" },
	[";"] = { '<cmd>lua require("telescope.builtin").commands()<CR>', "command palette" },
}, {
	prefix = "<leader>",
})
