local lsp_names = function()
  local clients = vim.lsp.get_active_clients({ bufnr = 0 })
  local client_names = {}
  for _, client in pairs(clients) do
    table.insert(client_names, client.name)
  end
  return table.concat(client_names, ", ")
end

local filename = {
  "filename",
  path = 1, -- 1: Relative path
}

local lualine = require("lualine")
lualine.setup({
  options = {
    theme = "auto",
    component_separators = {
      left = "",
      right = "",
    },
    section_separators = {
      left = "",
      right = "",
    },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = { filename },
    lualine_x = { lsp_names },
    lualine_y = { "encoding", "filetype" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { filename },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
})
