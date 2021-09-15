local function on_attach(client)
  return require'completion'.on_attach
end

-- TypeScript
-- TypeScript language server
-- npm install -g typescript typescript-language-server
require'lspconfig'.tsserver.setup({
  on_attach = function(client)
    client.resolved_capabilities.document_formatting = false
    require "lsp_signature".on_attach()
    require 'completion'.on_attach()
  end
})

require('custom/efm')

-- Ruby
-- brew install solargraph
require('lspconfig').solargraph.setup({
  on_attach = function(client)
    require "lsp_signature".on_attach()
    require 'completion'.on_attach()
  end
})

-- Golang
require'lspconfig'.gopls.setup{
  cmd = {os.getenv('HOME') .. "/go/bin/gopls", "serve"},
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
  on_attach=on_attach
}
