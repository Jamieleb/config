local status_ok, reach = pcall(require, 'reach')
if not status_ok then
  return
end

local buffer_options = {
  handle = 'dynamic',
  actions = {
    split = 's',
    vertsplit = 'v',
    tabsplit = 't',
    delete = 'd',
  }
}

reach.setup({
  notifications = true
})

_buf_jump = function()
  reach.buffers(buffer_options)
end

vim.api.nvim_create_user_command('BufJump', function() reach.buffers(buffer_options) end, { nargs = 0 })

lvim.builtin.which_key.mappings['b']['j'] = { '<cmd>BufJump<CR>', 'Jump' }
