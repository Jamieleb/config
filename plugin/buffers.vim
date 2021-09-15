lua << EOF
local wk = require("which-key")
wk.register({
  b = {
      name = "buffer",
      N = { "<cmd>enew<CR>", "new buffer" },
      k = { "<cmd>BufferClose<CR>", "kill current buffer" },
      n = { "<cmd>BufferNext<CR>", "next buffer" },
      L = { "<cmd>BufferCloseBuffersRight<CR>", 'close buffers to right' },
      H = { "<cmd>BufferCloseBuffersLeft<CR>", 'close buffers to left' },
      p = { "<cmd>BufferPrevious<CR>", 'close buffers to left' },
      g = { "<cmd>BufferPick<CR>", 'Buffer Pick' },
      o = { "<cmd>BufferCloseAllButCurrent<CR>", 'close other buffers' },
      b = { "<cmd>Telescope buffers<CR>", 'Telescope buffers' },
    },
  }, { prefix = "<leader>" }
)
wk.register({
  x = {
      name = 'scratch',
      x = { '<cmd>Scratch<CR>', 'open scratch buffer' },
      X = { '<cmd>Scratch!<CR>', 'clear and open scratch buffer' },
      i = { '<cmd>ScratchInsert<CR>', 'open scratch buffer in insert mode' },
      I = { '<cmd>ScratchInsert!<CR>', 'clear and open scratch buffer in insert mode' },
      p = { '<cmd>ScratchPreview<CR>', 'preview scratch buffer' },
    }
  }, { prefix = "<leader>" }
)
EOF

