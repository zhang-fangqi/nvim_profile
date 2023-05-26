-- [[ plug.lua ]]


require("lazy").setup({
	-- [[ Plugins Go Here ]]
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup {}
		end,
	},
	'mhinz/vim-startify',
	'DanilaMihailov/beacon.nvim',
	{
		'nvim-lualine/lualine.nvim',
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			opt = true
		}
	},
	-- [[ Themes]]
	-- {
	-- 	'goolord/alpha-nvim',
	-- 	dependencies = { 'nvim-tree/nvim-web-devicons' },
	-- 	config = function()
	-- 		require 'alpha'.setup(require 'alpha.themes.startify'.config)
	-- 	end
	-- },
	-- 'Mofiqul/dracula.nvim',
	'projekt0n/github-nvim-theme',

	-- [[ Dev ]]
	"nvim-lua/plenary.nvim",
	{
		-- fuzzy finder
		'nvim-telescope/telescope.nvim',
		dependencies = {
			{ 'nvim-lua/plenary.nvim' },
			{ 'nvim-treesitter/nvim-treesitter' }
		}
	},
	-- [[ Edit ]]
	-- easily surround chunks of text with brackets, quotes, tags, and more
	'tpope/vim-surround',
	-- a much simpler way to use some motions in vim
	'easymotion/vim-easymotion',
	-- quickly toggle comments
	'tpope/vim-commentary',
	-- A super powerful autopair plugin
	'windwp/nvim-autopairs',

	-- code structure
	'majutsushi/tagbar',
	-- see indentation
	'Yggdroot/indentLine',
	-- git integration
	'tpope/vim-fugitive',
	-- commit history
	'junegunn/gv.vim',
	-- use vim terminal in the floating/popup window
	'voldikss/vim-floaterm',
	--visualizes undo history
	'mbbill/undotree',
	-- craft a personal knowledgebase
	'vimwiki/vimwiki',
})
