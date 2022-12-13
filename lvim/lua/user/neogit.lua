local status_ok, neogit = pcall(require, 'neogit')
if not status_ok then
  return
end

neogit.setup()

lvim.builtin.which_key.mappings['g']['n'] = { '<cmd>Neogit<cr>', 'Neogit' }
lvim.builtin.which_key.mappings['g']['c'] = { '<cmd>Neogit commit<cr>', 'Neogit commit' }
