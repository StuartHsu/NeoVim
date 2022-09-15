local status, mason = pcall(require, 'mason')
if (not status) then return end
local status2, lspconfig = pcall(require, 'mason-lspconfig')
if (not status2) then return end

mason.setup {}
lspconfig.setup {
  ensure_installed = { 'csharp_ls', 'omnisharp', 'csharp-language-server' }
  -- ensure_installed = { 'omnisharp', 'csharp-language-server' }
}

-- require 'lspconfig'.csharp_ls.setup {}
-- require 'lspconfig'.omnisharp.setup {}
-- require 'lspconfig'.omnisharp_mono.setup {}
