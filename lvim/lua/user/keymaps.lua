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

local picker = require('window-picker')
local function pick_window()
  local picked_window_id = picker.pick_window() or vim.api.nvim_get_current_win()
  vim.api.nvim_set_current_win(picked_window_id)
end

local function swap_windows()
  local window = picker.pick_window({
    include_current_win = false
  })
  local target_buffer = vim.fn.winbufnr(window)
  -- Set the target window to contain current buffer
  vim.api.nvim_win_set_buf(window, 0)
  -- Set current window to contain target buffer
  vim.api.nvim_win_set_buf(0, target_buffer)
end

vim.api.nvim_create_user_command('PickWindow', pick_window, { nargs = 0 })
vim.api.nvim_create_user_command('SwapWindow', swap_windows, { nargs = 0 })

lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
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
  w = { '<cmd>PickWindow<CR>', 'Pick a window' },
  S = { '<cmd>SwapWindow<CR>', 'Swap windows' }
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
lvim.builtin.which_key.mappings["b"]["b"] = { "<cmd>Telescope buffers previewer=false theme=ivy<CR>", "Telescope buffers" }
lvim.builtin.which_key.mappings["b"]["z"] = { "<cmd>ZenMode<CR>", "Zen Mode" }
lvim.builtin.which_key.mappings["b"]["/"] = {
  "<cmd> Telescope current_buffer_fuzzy_find previewer=false theme=ivy<CR>",
  "search current buffer",
}

lvim.builtin.which_key.mappings['l']['t'] = {
  name = '+Trouble',
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
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
lvim.builtin.which_key.mappings['n'] = { '<cmd>MindOpenMain<cr>', 'Open Notes' }
lvim.builtin.which_key.mappings["l"]["P"] = {
  name = '+Preview',
  f = { "<cmd>lua require('goto-preview').goto_preview_definition()<cr>", 'Preview definition' },
  t = { "<cmd>lua require('goto-preview').goto_preview_type_definition()<cr>", 'Preview type definition' },
  i = { "<cmd>lua require('goto-preview').goto_preview_implementation()<cr>", 'Preview implementation' },
  c = { "<cmd>lua require('goto-preview').close_all_win()<cr>", 'Close all preview windows' },
  r = { "<cmd>lua require('goto-preview').goto_preview_references()<cr>", 'Preview references' },
  d = { "<cmd>lua require('goto-preview').goto_preview_definition()<cr>", 'Preview definition' }
}

-- lvim.builtin.which_key.mappings['l']['a'] = { '<cmd>CodeActionMenu<cr>', 'Code actions' }
lvim.builtin.which_key.mappings['l']['a'] = { '<cmd>Lspsaga code_action<CR>', 'Code action' }
lvim.builtin.which_key.mappings['l']['r'] = { '<cmd>Lspsaga rename<cr>', 'Rename' }
lvim.builtin.which_key.mappings['l']['d'] = { '<cmd>Lspsaga peek_definition<cr>', 'Peek definition' }
lvim.builtin.which_key.mappings['l']['D'] = { '<cmd>Lspsaga goto_definition<cr>', 'Go to definition' }
lvim.builtin.which_key.mappings['l']['T'] = { '<cmd>Lspsaga goto_type_definition<cr>', 'Go to type definition' }

lvim.builtin.which_key.mappings['l']['v'] = { '<cmd>Lspsaga lsp_finder<cr>', 'View definition & references' }

vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

lvim.builtin.which_key.mappings['J'] = {
  name = '+TreeSJ',
  J = { "<cmd>TSJToggle<CR>", 'Toggle under cursor' },
  s = { "<cmd>TSJSplit<CR>", 'Split under cursor' },
  j = { "<cmd>TSJJoin<CR>", 'Join under cursor' },
}

lvim.builtin.which_key.mappings['c'] = {
  name = '+ChatGPT',
  c = { "<cmd>ChatGPT<CR>", "Open interactive window" },
  a = { "<cmd>ChatGPTActAs<CR>", "Open Act As prompt" },
  e = { "<cmd>ChatGPTEditWithInstructions<CR>", "Open Edit with Instructions window" }
}

lvim.builtin.which_key.mappings['v'] = { '"*p', 'Put from system clipboard' }
lvim.builtin.which_key.mappings['c'] = { '"*y', 'Yank to system clipboard' }

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
