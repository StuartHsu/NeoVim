local status, filetree = pcall(require, 'nvim-tree')
if (not status) then return end

filetree.setup {
  -- sort_by = 'case_ensitive',
  -- view = {
  --   adaptive_size = true,
  --   mappings = {
  --     list = {
  --       { key = "u", action = "dir_up" }
  --     }
  --   }
  -- },
  -- renderer = {
  --   group_empty = true
  -- },
  -- filters = {
  --   dotfiles = true
  -- }
}
