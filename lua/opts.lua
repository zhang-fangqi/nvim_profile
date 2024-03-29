--[[ opts.lua ]]
local opt = vim.opt
local cmd = vim.api.nvim_command

-- [[ Global ]]
vim.o.guifont = "Cascadia Mono:h12"

-- [[ Context ]]
opt.colorcolumn = '80'           -- str:  Show col for max line length
opt.number = true                -- bool: Show line numbers
opt.relativenumber = true        -- bool: Show relative line numbers
opt.scrolloff = 4                -- int:  Min num lines of context
opt.signcolumn = "yes"           -- str:  Show the sign column
opt.wrap = true                  -- bool: Makes the text of long lines always visible
opt.breakindent = true           -- bool: Preserve the indentation of a virtual line


-- [[ Filetypes ]]
opt.encoding = 'utf8'            -- str:  String encoding to use
opt.fileencoding = 'utf8'        -- str:  File encoding to use

-- [[ Theme ]]
opt.syntax = "ON"                -- str:  Allow syntax highlighting
opt.termguicolors = true         -- bool: If term supports ui color then enable
cmd('colorscheme github_light')	 -- cmd:  Set the colorscheme

-- [[ Search ]]
opt.ignorecase = true            -- bool: Ignore case in search patterns
opt.smartcase = true             -- bool: Override ignorecase if search contains capitals
opt.incsearch = true             -- bool: Use incremental search
opt.hlsearch = false             -- bool: Highlight search matches

-- [[ Whitespace ]]
opt.expandtab = false            -- bool: Use spaces instead of tabs
opt.shiftwidth = 8               -- num:  Size of an indent
opt.softtabstop = 8              -- num:  Number of spaces tabs count for in insert mode
opt.tabstop = 8                  -- num:  Number of spaces tabs count for

-- [[ Splits ]]
opt.splitright = true            -- bool: Place new window to right of current one
opt.splitbelow = true            -- bool: Place new window below the current one
