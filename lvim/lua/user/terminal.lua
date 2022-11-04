local status_ok, toggleterm = pcall(require, 'toggleterm')
if not status_ok then
  return
end

toggleterm.setup({
  open_mapping = [[<leader>tt]],
  start_in_insert = false,
  insert_mappings = false,
  persist_size = false,
})

lvim.builtin.which_key.mappings["t"] = {
  name = "terminal",
  t = { "toggle {count} terminal" },
  s = {
    '<Cmd>exe v:count1 . "ToggleTerm direction=horizontal size=30"<CR>',
    "toggle {count} terminal in horizontal split",
  },
  v = {
    '<Cmd>exe v:count1 . "ToggleTerm direction=vertical size=200"<CR>',
    "toggle {count} temrinal in vertical split",
  },
  f = { '<Cmd>exe v:count1 . "ToggleTerm direction=float"<CR>', "toggle {count} floating terminal" },
  w = { '<Cmd>exe v:count1 . "ToggleTerm direction=window"<CR>', "toggle {count} terminal in window" },
  X = { "<cmd>ToggleTermCloseAll<CR>", "hide all terminals" },
  O = { "<cmd>ToggleTermOpenAll<CR>", "show all terminals" },
}
