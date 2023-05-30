--[[ init.lua ]]
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- vim.g.gui_font_default_size = 12
-- vim.g.gui_font_size = vim.g.gui_font_default_size
-- vim.g.gui_font_face = "FiraMono Nerd Font Mono"
vim.o.guifont = "FiraMono Nerd Font Mono:h12"

-- IMPORTS
require('plug')      -- Plugins
require('opts')      -- Options
require('vars')      -- Variables
require('keys')      -- Keymaps
require('cmds')      -- Commands

-- PLUGINS: Add this section
require("nvim-tree").setup({})
require('lualine').setup{
	options = {
		theme = 'github_light',
		section_separators = '',
		component_separators = ''
	}
}
require('nvim-autopairs').setup{}
require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
