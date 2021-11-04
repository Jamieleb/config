local wk = require("which-key")

wk.register({
	["<localleader>"] = {
		name = "go commands",
		i = { "<cmd>GoImport", "import module into current file" },
		I = { "<cmd>GoImport!", "get and import module into current file" },
		d = { "<cmd>GoDoc<CR>", "open docs for word under cursor" },
		D = { "<cmd>GoDoc", "open docs for specified word" },
		D = { "<cmd>GoDoc", "open docs for specified word" },
		f = { "<cmd>GoFmt<CR>", "format current buffer" },
		r = { "<cmd>GoRun<CR>", "run" },
		b = { "<cmd>GoBuild<CR>", "build" },
		B = { "<cmd>GoInstall<CR>", "install" },
		t = { "<cmd>GoTest<CR>", "test current directory" },
		T = { "<cmd>GoTest  ./... <CR>", "test all test files" },
		T = { "<cmd>GoTest  ./... <CR>", "test all test files" },
	},
}, {
	buffer = vim.api.nvim_get_current_buf(),
})
