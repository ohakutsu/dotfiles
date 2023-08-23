local M = {}

local fs = require("efmls-configs.fs")

local eslint = require("efmls-configs.linters.eslint")
local prettier = require("efmls-configs.formatters.prettier")
local rubocop = require("efmls-configs.linters.rubocop")
local shellcheck = require("efmls-configs.linters.shellcheck")
local stylua = require("efmls-configs.formatters.stylua")

local slimlint = {
	prefix = "slim-lint",
	lintCommand = string.format("%s --stdin-file-path ${INPUT}", fs.executable("slim-lint", fs.Scope.BUNDLE)),
	lintStdin = true,
	lintFormats = {
		"%f:%l [%t] %m",
	},
	rootMarkers = {},
}

local languages = {
	bash = { shellcheck },
	javascript = { eslint, prettier },
	json = { prettier },
	lua = { stylua },
	markdown = { prettier },
	ruby = { rubocop },
	sh = { shellcheck },
	slim = { slimlint },
	typescript = { eslint, prettier },
	typescriptreact = { eslint, prettier },
	yaml = { prettier },
}

M.config = {
	cmd = { "efm-langserver", "-logfile", vim.fn.expand("$HOME/.cache/efm-langserver.log"), "-loglevel", "1" },
	init_options = { documentFormatting = true },
	filetypes = vim.tbl_keys(languages),
	settings = {
		languages = languages,
	},
}

return M
