--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '<esc>', {})

-- Toggle nvim-tree
map('n', 'n', [[:NvimTreeToggle]], {})

-- Toggle more plugins
--map('n', 'l', [[:IndentLinesToggle]], {})
map('n', 't', [[:TagBarToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})
