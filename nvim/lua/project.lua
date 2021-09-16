require('nvim-projectconfig').load_project_config({ project_dir = "~/config/nvim/projects/" })
local wk = require('which-key')
wk.register({
  ['.'] = {
    name = 'project',
    ['.'] = { '<cmd>EditProjectConfig<CR>', 'edit project specific config' },
  }
}, { prefix = '<leader>' })
