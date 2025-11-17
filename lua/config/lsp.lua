local capabilities = vim.lsp.protocol.make_client_capabilities()
require('mason').setup()
local mason_lspconfig = require 'mason-lspconfig'
mason_lspconfig.setup {
ensure_installed = { "pyright" }
}
require("lspconfig").pyright.setup {}

require("lspconfig").lua_ls.setup {}
