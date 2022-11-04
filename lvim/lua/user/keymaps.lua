-- keymappings [view all the defaults by pressing <leader>Lk]
-- add your own keymapping
-- lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }
lvim.leader = "space"

lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.insert_mode["<A-j>"] = false
lvim.keys.insert_mode["<A-k>"] = false
lvim.keys.normal_mode["<A-j>"] = false
lvim.keys.normal_mode["<A-k>"] = false
lvim.keys.visual_block_mode["<A-j>"] = false
lvim.keys.visual_block_mode["<A-k>"] = false

-- Use which-key to add extra bindings with the leader-key prefix

lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- }
lvim.builtin.which_key.mappings["j"] = { "<c-f>", "Page Down" }
lvim.builtin.which_key.mappings["k"] = { "<c-b>", "Page Up" }
lvim.builtin.which_key.mappings["<BS>"] = { "<c-^>", "Last Buffer" }
lvim.builtin.which_key.mappings["w"] = {
  name = "+Windows",
  j = { "<c-w>j", "Navigate Down" },
  h = { "<c-w>h", "Navigate Left" },
  l = { "<c-w>l", "Navigate Right" },
  k = { "<c-w>k", "Navigate Up" },
  J = { "<c-w>J", "Move Buffer Down" },
  H = { "<c-w>H", "Move Buffer Left" },
  L = { "<c-w>L", "Move Buffer Right" },
  K = { "<c-w>K", "Move Buffer Up" },
  c = { '<C-w>c', 'close window' },
  d = { '<C-w>c', 'close window' },
  v = { '<C-w>v', 'vertical split' },
  s = { '<C-w>s', 'horizontal split' },
  ['='] = { '<C-w>=', 'balance splits' },
}
lvim.builtin.which_key.mappings["f"] = {
  name = "+File",
  s = { '<cmd>:write<CR>', 'Save' },
  r = { "<cmd>edit!<CR>", "clear unsaved changes" },
  y = { "mcggyG'c", "yank file" },
  Y = { [[mcgg"*yG'c]], "yank file to clipboard" },
  n = { "<cmd>enew<CR>", "new" },
  x = { "<cmd>q<CR>", "exit" },
  X = { "<cmd>q!<CR>", "exit (lose unsaved)" },
}

lvim.builtin.which_key.mappings["b"]["k"] = { "<cmd>BufferKill<CR>", "Previous" }
lvim.builtin.which_key.mappings["b"]["p"] = { "<cmd>BufferLineCyclePrev<CR>", "Previous" }
lvim.builtin.which_key.mappings["b"]["s"] = { "<cmd>Telescope buffers previewer=false theme=ivy<CR>", "Telescope buffers" }
lvim.builtin.which_key.mappings["b"]["z"] = { "<cmd>ZenMode<CR>", "Zen Mode" }
lvim.builtin.which_key.mappings["b"]["/"] = {
  "<cmd> Telescope current_buffer_fuzzy_find previewer=false theme=ivy<CR>",
  "search current buffer",
}

lvim.builtin.which_key.mappings["<leader>"] = { require("lvim.core.telescope.custom-finders").find_project_files,
  "Find File" }
lvim.builtin.which_key.mappings["/"] = {
  '<cmd>lua require("telescope.builtin").live_grep(require("telescope.themes").get_ivy())<CR>',
  "live grep",
}
lvim.builtin.which_key.mappings[";"] = {
  '<cmd>lua require("telescope.builtin").commands(require("telescope.themes").get_ivy())<CR>',
  "command palette",
}
lvim.builtin.which_key.mappings["l"]["D"] = {
  "<cmd>lua vim.lsp.buf.definition()<CR>", "go to definition"
}

vim.cmd([[
" keep cursor centered when jumping and line concatenating
"   src ThePrimagen https://www.youtube.com/watch?v=hSHATqh8svM&t=450s
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo break points
"   src ThePrimagen https://www.youtube.com/watch?v=hSHATqh8svM&t=450s
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" jumplist mutations
"   src ThePrimagen https://www.youtube.com/watch?v=hSHATqh8svM&t=450s
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

]])

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "p", '"_dP', opts)
