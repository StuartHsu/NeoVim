local status, whichkey = pcall(require, 'which-key')
if (not status) then
  print('which-key is not installed')
  return
end

whichkey.setup {
  window = {
    border = "single", -- none, single, double, shadow
    position = "bottom", -- bottom, top
  }
}

local opts = {
  mode = "n",
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
}

local mappings = {
  ["w"] = { "<cmd>update!<CR>", "Save" },
  ["q"] = { "<cmd>q!<CR>", "Quit" },

  b = {
    name = "Buffer",
    c = { "<Cmd>bd!<Cr>", "Close current buffer" },
    D = { "<Cmd>%bd|e#|bd#<Cr>", "Delete all buffers" },
  },

  p = {
    name = "Packer",
    c = { "<cmd>PackerCompile<cr>", "Compile" },
    i = { "<cmd>PackerInstall<cr>", "Install" },
    s = { "<cmd>PackerSync<cr>", "Sync" },
    S = { "<cmd>PackerStatus<cr>", "Status" },
    u = { "<cmd>PackerUpdate<cr>", "Update" },
  },

  -- g = {
  --   name = "Git",
  --   s = { "<cmd>Neogit<CR>", "Status" },
  -- },

  c = {
    name = "Code",
    g = { "<cmd>Neogen func<Cr>", "Func Doc" },
    G = { "<cmd>Neogen class<Cr>", "Class Doc" },
    d = { "<cmd>DogeGenerate<Cr>", "Generate Doc" },
  },
}

whichkey.register(mappings, opts)
