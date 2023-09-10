local fs = require("efmls-configs.fs")

local eslint = require("efmls-configs.linters.eslint")
local prettier = require("efmls-configs.formatters.prettier")
local rubocop = require("efmls-configs.linters.rubocop")
local shellcheck = require("efmls-configs.linters.shellcheck")
local slim_lint = require("efmls-configs.linters.slim_lint")
local stylua = require("efmls-configs.formatters.stylua")

local sql_formatter_config = string.format("%s/.sql-formatter.json", vim.fn.expand("<sfile>:p:h"))
local sql_formatter = {
  formatCommand = string.format("sql-formatter --config %s", sql_formatter_config),
  formatStdin = true,
}

local M = {}

local languages = {
  bash = { shellcheck },
  javascript = { eslint, prettier },
  json = { prettier },
  lua = { stylua },
  markdown = { prettier },
  ruby = { rubocop },
  sh = { shellcheck },
  slim = { slim_lint },
  sql = { sql_formatter },
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
