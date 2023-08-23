return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use("sainnhe/sonokai")

	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")

	use("creativenull/efmls-configs-nvim")

	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-telescope/telescope-live-grep-args.nvim" },
		},
		config = function()
			require("telescope").load_extension("live_grep_args")
		end,
	})

	use("airblade/vim-gitgutter")
	use({
		"f-person/git-blame.nvim",
		config = function()
			require("gitblame").setup({
				enabled = true,
				message_template = "      <author>, <date> • <summary> • <sha>",
				date_format = "%r",
			})
		end,
	})

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

	use({ "rust-lang/rust.vim", ft = { "rust" } })
	use({ "slim-template/vim-slim", ft = { "slim" } })

	use("github/copilot.vim")

	use("terrortylor/nvim-comment")

	use({
		"ohakutsu/socks-copypath.nvim",
		config = function()
			require("socks-copypath").setup()
		end,
	})
end)
