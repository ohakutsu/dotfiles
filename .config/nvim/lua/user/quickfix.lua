vim.opt.grepprg = "rg --vimgrep --smart-case --hidden --glob '!**/{.git,node_modules,target}/*'"

local quickfix_group = vim.api.nvim_create_augroup("QuickFixGroup", { clear = true })
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  group = quickfix_group,
  callback = function()
    local opts = {
      buffer = true,
      noremap = true,
      silent = false,
    }

    vim.keymap.set("n", "qo", "<Cmd>colder<CR>", opts)
    vim.keymap.set("n", "qn", "<Cmd>cnewer<CR>", opts)
    vim.keymap.set("n", "<Leader>q", function()
      local window_exists = vim.fn.getqflist({ winid = true }).winid ~= 0
      if window_exists then
        vim.cmd("cclose")
      else
        vim.cmd("copen")
      end
    end, opts)
  end,
})
