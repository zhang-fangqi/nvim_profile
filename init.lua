--[[ init.lua ]]
local lazypath = vim.fn.stdpath("config") .. "/lazy/lazy.nvim"
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

-- IMPORTS
require('plug')      -- Plugins
require('opts')      -- Options
require('vars')      -- Variables
require('keys')      -- Keymaps
require('cmds')      -- Commands

-- PLUGINS: Add this section
require("nvim-tree").setup({
  -- sort_by = "case_sensitive",
  -- hijack_cursor = true,
  -- system_open = {
  --   cmd = "open",
  -- },
  -- view = {
  --   width = 5,
  --   adaptive_size = true,
  -- },
  -- renderer = {
  --   group_empty = true,
  --   icons = {
  --     show = {
  --       git = true,
  --       file = false,
  --       folder = false,
  --       folder_arrow = true,
  --     },
  --     glyphs = {
  --       bookmark = " ",
  --       folder = {
  --         arrow_closed = "⏵",
  --         arrow_open = "⏷",
  --       },
  --       git = {
  --         unstaged = "✗",
  --         staged = "✓",
  --         unmerged = "⌥",
  --         renamed = "➜",
  --         untracked = "★",
  --         deleted = "⊖",
  --         ignored = "◌",
  --       },
  --     },
  --   },
  -- },
  -- filters = {
  --   dotfiles = false,
  -- },
})
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
