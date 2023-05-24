--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
map('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- remap the key used to leave insert mode
map('i', 'jk', '<esc>', {})

-- the sequence Space + w will call the write command
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {desc = 'Save'})

-- copy to clipboard
vim.keymap.set({'n', 'x'}, 'cp', '"+y')

-- paste from clipboard
vim.keymap.set({'n', 'x'}, 'cv', '"+p')

--Select all text in current buffer
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')

-- Toggle nvim-tree
map('n', 'n', [[:NvimTreeToggle]], {})

-- Toggle more plugins
--map('n', 'l', [[:IndentLinesToggle]], {})
map('n', 't', [[:TagBarToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})

