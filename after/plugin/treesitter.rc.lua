local status, ts = pcall(require, 'nvim-treesitter.configs')
local indent = require('nvim-treesitter.indent')
if (not status) then
  print("nvim-treesitter.configs is not installed")
  return
end


ts.setup {
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  -- Automatically install missing parsers when entering buffer
  auto_install = true,
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'tsx',
    'lua',
    'json',
    'css',
    'c_sharp' -- 自己加的
  },
  autotag = {
    enable = true,
  }
}
