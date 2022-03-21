local function prettier_js()
	return {
		exe = "npx prettier",
		args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
		stdin = true,
	}
end

require("formatter").setup({
	filetype = {
		javascript = { prettier_js },
		typescript = { prettier_js },
		typescriptreact = { prettier_js },
		javascriptreact = { prettier_js },
		ruby = {
			function()
				return {
					exe = "bundle exec rubocop",
					args = {
						"--auto-correct",
						"--stdin",
						"%:p",
						"2>/dev/null",
						"|",
						"awk 'f; /^====================$/{f=1}'",
					},
					stdin = true,
				}
			end,
		},
		lua = {
			function()
				return {
					exe = "stylua",
					args = {
						"-",
					},
					stdin = true,
				}
			end,
		},
		go = {
			function()
				return {
					exe = "gofmt",
					args = {},
					stdin = true,
				}
			end,
		},
		rust = {
			function()
				return {
					exe = "rustfmt",
					args = { "--emit=stdout" },
					stdin = true,
				}
			end,
		},
	},
})

function _format_and_write()
	vim.api.nvim_command("write")
	vim.api.nvim_command("FormatWrite")
end

local wk = require("which-key")
wk.register({
	name = "file",
	s = { "<cmd>lua _format_and_write()<CR>", "format and save" },
	w = { "<cmd>write<CR>", "save" },
	W = { "<cmd>wq<CR>", "save and exit" },
	f = { "<cmd>Format<CR>", "format" },
	r = { "<cmd>edit!<CR>", "clear unsaved changes" },
	y = { "mcggyG'c", "yank file" },
	Y = { [[mcgg"*yG'c]], "yank file to clipboard" },
	n = { "<cmd>enew<CR>", "new" },
	x = { "<cmd>q<CR>", "exit" },
	X = { "<cmd>q!<CR>", "exit (lose unsaved)" },
	e = {
		'<cmd>lua require("telescope.builtin").file_browser({ cwd = require("telescope.utils").buffer_dir() })<CR>',
		"explorer",
	},
  h = { "<cmd>:lua require('memento').toggle()<CR>", "recently closed files" },
}, {
	prefix = "<leader>f",
})
