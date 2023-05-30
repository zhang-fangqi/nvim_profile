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
map('n', 'n', [[:NvimTree]], {})

-- Toggle more plugins
--map('n', 'l', [[:IndentLinesToggle]], {})
map('n', 't', [[:TagBarToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})

--use Ctrl-Shift-v to paste the contents of the system Clipboard in command mode
vim.cmd([[cnoremap <C-S-v> <C-r>+]])


-- Increase the font size
function increment_font_size()
  local current_font = vim.o.guifont
  local font_name, font_size = string.match(current_font, "(.-):h(%d+)")
  if font_size then
    font_size = tonumber(font_size)
    font_size = font_size + 1
    local new_font = string.format("%s:h%.1f", font_name, font_size)
    vim.o.guifont = new_font
  end
end

-- Decrease the font size
function decrement_font_size()
  local current_font = vim.o.guifont
  local font_name, font_size = string.match(current_font, "(.-):h(%d+)")
  if font_size then
    font_size = tonumber(font_size)
    font_size = font_size - 1
    if font_size < 1 then
      font_size = 1
    end
    local new_font = string.format("%s:h%.1f", font_name, font_size)
    vim.o.guifont = new_font
  end
end

-- Map the key combinations
vim.api.nvim_set_keymap('n', '<C-=>', '<Cmd>lua increment_font_size()<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-->', '<Cmd>lua decrement_font_size()<CR>', { silent = true })
