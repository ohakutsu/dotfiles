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
end)
