local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

keymap.set('', '<Space>', '<Nop>')
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement (對數字增加或減少)
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards (往前刪除一個字)
keymap.set('n', 'dw', 'vb"_d')

-- Select all (全選)
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab (開新 tab)
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
-- Split window (水平 & 垂直)
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
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
keymap.set('n', '<Leader>c', ':NvimTreeFocus<cr>', opts)
keymap.set('n', '<Leader>ff', ':NvimTreeFindFile<cr>', opts)
