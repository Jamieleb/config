local _, actions = pcall(require, "telescope.actions")
-- require('telescope').load_extension('toggletasks')
lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,

    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,

    ["<C-b>"] = actions.results_scrolling_up,
    ["<C-f>"] = actions.results_scrolling_down,

    ["<C-c>"] = actions.close,

    ["<Down>"] = actions.move_selection_next,
    ["<Up>"] = actions.move_selection_previous,

    ["<CR>"] = actions.select_default,
    ["<C-s>"] = actions.select_horizontal,
    ["<C-v>"] = actions.select_vertical,
    ["<C-t>"] = actions.select_tab,

    ["<c-d>"] = require("telescope.actions").delete_buffer,

    -- ["<C-u>"] = actions.preview_scrolling_up,
    -- ["<C-d>"] = actions.preview_scrolling_down,

    -- ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
    ["<Tab>"] = actions.close,
    ["<S-Tab>"] = actions.close,
    -- ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
    ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
    ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
    ["<C-l>"] = actions.complete_tag,
    ["<C-h>"] = actions.which_key, -- keys from pressing <C-h>
  },
  -- for normal mode
  n = {
    ["<esc>"] = actions.close,
    ["<CR>"] = actions.select_default,
    ["<C-x>"] = actions.select_horizontal,
    ["<C-v>"] = actions.select_vertical,
    ["<C-t>"] = actions.select_tab,
    ["<C-b>"] = actions.results_scrolling_up,
    ["<C-f>"] = actions.results_scrolling_down,

    ["<Tab>"] = actions.close,
    ["<S-Tab>"] = actions.close,
    -- ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
    -- ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
    ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
    ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

    ["j"] = actions.move_selection_next,
    ["k"] = actions.move_selection_previous,
    ["H"] = actions.move_to_top,
    ["M"] = actions.move_to_middle,
    ["L"] = actions.move_to_bottom,
    ["q"] = actions.close,
    ["dd"] = require("telescope.actions").delete_buffer,
    ["s"] = actions.select_horizontal,
    ["v"] = actions.select_vertical,
    ["t"] = actions.select_tab,

    ["<Down>"] = actions.move_selection_next,
    ["<Up>"] = actions.move_selection_previous,
    ["gg"] = actions.move_to_top,
    ["G"] = actions.move_to_bottom,

    ["<C-u>"] = actions.preview_scrolling_up,
    ["<C-d>"] = actions.preview_scrolling_down,

    ["<PageUp>"] = actions.results_scrolling_up,
    ["<PageDown>"] = actions.results_scrolling_down,

    ["?"] = actions.which_key,
  },
}

lvim.builtin.which_key.mappings['u'] = { '<cmd>Telescope undo<cr>', 'Telescope undo' }
lvim.builtin.which_key.mappings['z'] = { "<cmd>Telescope spell_suggest<cr>", 'Telescope spellings'}
