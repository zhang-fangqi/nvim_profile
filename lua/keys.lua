--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '<esc>', {})

-- the sequence Space + w will call the write command
map('n', '<leader>w', '<cmd>write<cr>', {desc = 'Save'})

-- copy to clipboard
vim.keymap.set({'n', 'x'}, 'cp', '"+y')

-- paste from clipboard
vim.keymap.set({'n', 'x'}, 'cv', '"+p')

-- Toggle nvim-tree
map('n', 'n', [[:NvimTreeToggle]], {})

-- Toggle more plugins
--map('n', 'l', [[:IndentLinesToggle]], {})
map('n', 't', [[:TagBarToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})

