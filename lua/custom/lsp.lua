local function on_attach(client)
  return require'completion'.on_attach
end

-- TypeScript
-- TypeScript language server
-- npm install -g typescript typescript-language-server
require'lspconfig'.tsserver.setup({
  on_attach = function(client)
    client.resolved_capabilities.document_formatting = false
    on_attach=on_attach
  end
})

require('custom/efm')

-- Ruby
-- brew install solargraph
require('lspconfig').solargraph.setup{ on_attach=on_attach }