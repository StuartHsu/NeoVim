local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

keymap.set('', '<Space>', '<Nop>', opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap.set('i', "jj", "<ESC>", opts)
-- 移到最前 & 最後
keymap.set('n', '<S-h>', '^', opts)
keymap.set('n', '<S-l>', 'g_', opts)
-- 產生新的一行
keymap.set('n', '<C-CR>', 'o<ESC>', opts)
keymap.set('n', '<C-CR>', 'O<ESC>', opts)

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement (對數字增加或減少)
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards (往前刪除一個字)
keymap.set('n', 'dw', 'vb"_d')

-- 縮排
keymap.set('v', '<', '<gv', opts)
keymap.set('v', '>', '>gv', opts)

-- Select all (全選)
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab (開新 tab)
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

-- Split window (水平 & 垂直)
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move window
keymap.set('n', 'sw', '<C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Nvimtree
keymap.set('n', '<Leader>e', ':NvimTreeToggle<cr>', opts)
-- keymap.set('n', '<Leader>c', ':NvimTreeFocus<cr>', opts)
-- keymap.set('n', '<Leader>ff', ':NvimTreeFindFile<cr>', opts)

-- telescope
require('telescope').setup {
  defaults = {
    mappings = {
      n = {
        ['q'] = require('telescope.actions').close
      }
    }
  },
  keymap.set('n', ';f', '<cmd>lua require("telescope.builtin").find_files({ no_ignore = false, hidden = true })<cr>',
    opts),
  keymap.set('n', ';r', '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts),
  keymap.set('n', '\\\\', '<cmd>lua require("telescope.builtin").buffers()<cr>', opts),
  keymap.set('n', ';t', '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts),
  keymap.set('n', ';;', '<cmd>lua require("telescope.builtin").resume()<cr>', opts),
  keymap.set('n', ';e', '<cmd>lua require("telescope.builtin").diagnostics()<cr>', opts),
  keymap.set('n', 'sf',
    '<cmd>lua require("telescope").extensions.file_browser.file_browser({ path = "%:p:h", cwd = telescope_buffer_dir(), rrspect_git_ignore = fasle, hidden = true, grouped = true, previewer = false, initial_mode = "normal", layout_config = { height = 40 } })<cr>'
    , opts),
  keymap.set('n', '<C-p>', '<cmd>lua require("telescope").extensions.project.project{}<cr>', opts),
}
