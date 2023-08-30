-- Require LSP config which we can use to attach gopls
  lspconfig = require "lspconfig"
  util = require "lspconfig/util"
-- Since we installed lspconfig and imported it, we can reach
-- we can then set it up using the setup and insert the needed configurations
  lspconfig.bashls.setup {}
  lspconfig.pyright.setup {}
  lspconfig.r_language_server.setup {
    capabilities = capabilities,
  }
  lspconfig.lua_ls.setup {}
  lspconfig.marksman.setup {}
  lspconfig.jsonls.setup {}
