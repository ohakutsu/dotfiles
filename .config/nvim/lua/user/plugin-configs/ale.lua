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
