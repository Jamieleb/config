local status_ok, reach = pcall(require, 'reach')
if not status_ok then
  return
end

local buffer_options = {
  handle = 'dynamic',
}

reach.setup({
  notifications = true
})

vim.api.nvim_create_user_command('BufJump', function() reach.buffers(buffer_options) end, { nargs = 0 })

lvim.builtin.which_key.mappings['b']['j'] = { '<cmd>BufJump<CR>', 'Jump' }
