require("telescope").load_extension("live_grep_args")

local actions = require("telescope.actions")
local builtin = require("telescope.builtin")
local config = require("telescope.config")
local telescope = require("telescope")

local vimgrep_arguments = { unpack(config.values.vimgrep_arguments) }
table.insert(vimgrep_arguments, "--hidden")
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!**/{.git,node_modules,target}/*")

require("telescope").setup({
  defaults = {
    mappings = {
      n = {
        ["<Esc><Esc>"] = actions.close,
      },
    },
    vimgrep_arguments = vimgrep_arguments,
  },
  pickers = {
    find_files = {
      find_command = { "rg", "--files", "--hidden", "--glob", "!**/{.git,node_modules,target}/*" },
    },
    buffers = {
      sort_lastused = true,
    },
  },
})

vim.keymap.set("n", "<Leader>b", builtin.buffers)
vim.keymap.set("n", "<Leader>c", builtin.commands)
vim.keymap.set("n", "<Leader>g", builtin.live_grep)
vim.keymap.set("n", "<Leader>h", builtin.help_tags)
vim.keymap.set("n", "<Leader>o", builtin.oldfiles)
vim.keymap.set("n", "<Leader>p", builtin.find_files)
vim.keymap.set("n", "<Leader>r", builtin.registers)
vim.keymap.set("n", "<Leader>#", builtin.grep_string)
vim.keymap.set("n", "<Leader>*", builtin.grep_string)
vim.keymap.set("n", "<Leader>fg", telescope.extensions.live_grep_args.live_grep_args)
