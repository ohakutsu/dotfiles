vim.g.ale_linters = {
  bash = { "shellcheck" },
  javascript = { "eslint", "prettier", "cspell" },
  json = { "prettier", "cspell" },
  jsonc = { "prettier" },
  lua = { "stylua", "cspell" },
  markdown = { "prettier", "cspell" },
  ruby = { "rubocop", "cspell" },
  rust = { "cspell" },
  sh = { "shellcheck", "cspell" },
  slim = { "slim-lint" },
  sql = {},
  text = { "cspell" },
  typescript = { "eslint", "prettier", "cspell" },
  typescriptreact = { "eslint", "prettier", "cspell" },
  yaml = { "prettier" },
}
vim.g.ale_fixers = {
  bash = { "shellcheck" },
  javascript = { "eslint", "prettier" },
  json = { "prettier" },
  jsonc = { "prettier" },
  lua = { "stylua" },
  markdown = { "prettier" },
  ruby = { "rubocop" },
  sh = { "shellcheck" },
  slim = { "slim-lint" },
  sql = {},
  typescript = { "eslint", "prettier" },
  typescriptreact = { "eslint", "prettier" },
  yaml = { "prettier" },
}

vim.g.ale_ruby_rubocop_auto_correct_all = 1

-- TODO: slim-lint
-- vim.g.ale_slim_slim_lint_executable = "bundle exec slim-lint"

-- TODO: sql-formatter
