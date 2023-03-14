return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("sainnhe/sonokai")
	use("prabirshrestha/vim-lsp")
	use("mattn/vim-lsp-settings")
	use("prabirshrestha/asyncomplete.vim")
	use("prabirshrestha/asyncomplete-lsp.vim")
	use({
		"junegunn/fzf",
		run = function()
			vim.call("fzf#install")
		end,
	})
	use("junegunn/fzf.vim")
	use("airblade/vim-gitgutter")
	use("preservim/nerdtree")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
	use("RRethy/nvim-treesitter-endwise")
	use("cohama/lexima.vim")
end)
