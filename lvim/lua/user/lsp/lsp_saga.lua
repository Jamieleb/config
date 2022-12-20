local status_ok, saga = pcall(require, 'lspsaga')
if not status_ok then
  return
end

saga.init_lsp_saga()

lvim.builtin.which_key.mappings['l']['a'] = { '<cmd>Lspsaga code_action<CR>', 'Code action' }
lvim.builtin.which_key.mappings['l']['r'] = { '<cmd>Lspsaga rename<cr>', 'Rename' }
lvim.builtin.which_key.mappings['l']['d'] = { '<cmd>Lspsaga peek_definition<cr>', 'See definition' }
lvim.builtin.which_key.mappings['l']['v'] = { '<cmd>Lspsaga lsp_finder<cr>', 'View definition & references' }

vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
