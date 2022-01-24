vim.opt.completeopt = { "menuone", "noinsert", "noselect" }

local saga = require("lspsaga")
saga.init_lsp_saga()

require("renamer").setup()

local wk = require("which-key")
wk.register({
	l = {
		name = "lsp",
		d = { '<cmd>lua require("lspsaga.provider").preview_definition()<CR>', "preview definition" },
		D = { "<cmd>lua vim.lsp.buf.definition()<CR>", "go to definition" },
		r = { "<cmd>Trouble lsp_references<CR>", "show references in Trouble" },
		R = { '<cmd>lua require("renamer").rename()<CR>', "rename symbol" },
		k = { '<cmd>lua require("lspsaga.hover").render_hover_doc()<CR>', "show documentation" },
		e = { '<cmd>lua require("lspsaga.diagnostic").show_line_diagnostics()<CR>', "show line diagnostics" },
		n = { '<cmd>lua require("lspsaga.diagnostic").lsp_jump_diagnostic_next()<CR>', "next diagnostic" },
		p = { '<cmd>lua require("lspsaga.diagnostic").lsp_jump_diagnostic_prev()<CR>', "previous diagnostic" },
		l = { "<cmd>Trouble lsp_document_diagnostics<CR>", "Trouble document diagnostics" },
		L = { "<cmd>Trouble lsp_workspace_diagnostics<CR>", "Trouble workspace diagnostics" },
		a = { '<cmd>lua require("lspsaga.codeaction").code_action()<CR>', "code actions" },
		s = { "<cmd>Telescope lsp_document_symbols<CR>", "search document symbols" },
		S = { "<cmd>Telescope lsp_workspace_symbols<CR>", "search workspace symbols" },
		i = { "<cmd>Telescope lsp_implementations<CR>", "search implementations" },
		f = { "<cmd>Lspsaga lsp_finder<CR>", "lsp finder" },
		x = { "<cmd>ISwap<CR>", "swap args" },
		X = { "<cmd>ISwapWith<CR>", "swap arg under cursor" },
	},
}, {
	prefix = "<leader>",
})
wk.register({
	a = { ':<C-u>lua require("lspsaga.codeaction").range_code_action()<CR>', "range code action" },
}, {
	prefix = "<leader>l",
	mode = "v",
})
wk.register({
	["<C-f>"] = { '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<CR>', "saga smart scroll forward" },
	["<C-b>"] = { '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<CR>', "saga smart scroll backward" },
})
