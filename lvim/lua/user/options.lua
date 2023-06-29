-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "fluoromachine"
vim.opt.relativenumber = true
vim.opt.mouse = ""
vim.opt.clipboard = ""

-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.highlight.enabled = true

lvim.builtin.dap.active = true
vim.opt.showtabline = 0
vim.opt.colorcolumn = '120'
