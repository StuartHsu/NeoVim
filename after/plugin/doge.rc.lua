local status, doge = pcall(require, 'doge')
if (not status) then
  print('doge is not installed')
  return
end

doge.setup {
  -- options = {
  --   doge_enable_mappings = 1,
  --   doge_doc_standard_python = "google",
  --   doge_doc_standard_javascript = "jsdoc",
  --   doge_doc_standard_typescript = "jsdoc",
  --   doge_doc_standard_cs = "xmldoc",
  --   doge_mapping_comment_jump_forward = "<C-j>",
  --   doge_mapping_comment_jump_backward = "<C-k>",
  --   doge_buffer_mappings = 1,
  --   doge_comment_jump_modes = { "n", "i", "s" },
  --   doge_mapping = "",
  -- }
}
