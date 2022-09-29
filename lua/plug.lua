
-- [[ plug.lua ]]
return require('packer').startup({
	function(use)
		-- Packer can manage itself
		use {'wbthomason/packer.nvim'}
		-- [[ Plugins Go Here ]]
		use{
			'kyazdani42/nvim-tree.lua',
			requires = 'kyazdani42/nvim-web-devicons'
		}
		use{ 'mhinz/vim-startify' }
		use{ 'DanilaMihailov/beacon.nvim' }
		use{
			'nvim-lualine/lualine.nvim',	
			require = {
				'kyazdani42/nvim-web-devicons',
				opt = true
			}
		}
		use { 'Mofiqul/dracula.nvim' }

		-- [[ Dev ]]
		use "nvim-lua/plenary.nvim"
		use {
			-- fuzzy finder
			'nvim-telescope/telescope.nvim',	
			requires = { 
				{'nvim-lua/plenary.nvim'},
				{'nvim-treesitter/nvim-treesitter'}
			}
  		}

		-- code structure
  		use { 'majutsushi/tagbar' }			
		-- see indentation
  		use { 'Yggdroot/indentLine' }                   
		-- git integration
  		use { 'tpope/vim-fugitive' }                    
		-- commit history
  		use { 'junegunn/gv.vim' }                       
  		use { 'windwp/nvim-autopairs' } 
		-- use vim terminal in the floating/popup window
		use { 'voldikss/vim-floaterm' }			
		-- speed up loading Lua modules in Nvim to improve startup time
		use { 'lewis6991/impatient.nvim' }
		-- quickly toggle comments
		use { 'tpope/vim-commentary' }
		--visualizes undo history 
		use { 'mbbill/undotree' }
		-- easily surround chunks of text with brackets, quotes, tags, and more
		use { 'tpope/vim-surround' }
		--craft a personal knowledgebase
		use { 'vimwiki/vimwiki' }
		--
		use { 'easymotion/vim-easymotion' }
	end,
	config = {
		package_root = vim.fn.stdpath('config') .. '/site/pack'
	}
})
