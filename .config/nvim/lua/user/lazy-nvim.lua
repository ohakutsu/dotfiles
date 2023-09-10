local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup({
  { "folke/lazy.nvim" },

  { "sainnhe/sonokai" },

  { "neovim/nvim-lspconfig" },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("user.plugin-configs.mason-lspconfig")
    end,
  },
  { "creativenull/efmls-configs-nvim" },

  {
    "hrsh7th/nvim-cmp",
    config = function()
      require("user.plugin-configs.nvim-cmp")
    end,
    dependencies = {
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-vsnip" },
      { "hrsh7th/vim-vsnip" },
    },
  },

  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("user.plugin-configs.telescope")
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-live-grep-args.nvim",
    },
  },

  { "airblade/vim-gitgutter" },
  {
    "f-person/git-blame.nvim",
    config = function()
      require("user.plugin-configs.git-blame")
    end,
  },

  {
    "preservim/nerdtree",
    config = function()
      require("user.plugin-configs.nerdtree")
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
    config = function()
      require("user.plugin-configs.nvim-treesitter")
    end,
  },
  { "RRethy/nvim-treesitter-endwise" },

  { "cohama/lexima.vim" },

  { "rust-lang/rust.vim", ft = { "rust" } },
  { "slim-template/vim-slim", ft = { "slim" } },

  { "github/copilot.vim" },

  {
    "terrortylor/nvim-comment",
    config = function()
      require("nvim_comment").setup()
    end,
  },

  {
    "ohakutsu/socks-copypath.nvim",
    config = function()
      require("socks-copypath").setup()
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("user.plugin-configs.lualine")
    end,
  },
})
