local lsp_names = function()
  local clients = vim.lsp.get_clients({ bufnr = 0 })
  local client_names = {}
  for _, client in pairs(clients) do
    table.insert(client_names, client.name)
  end
  return table.concat(client_names, ", ")
end

local obenkyo = "\xf4\x80\x82\xa8"
local uniguri = "\xf4\x80\x82\xa9"
local saturn = "\xf4\x80\x82\xad"
local neko = "\xf4\x80\x82\xaf"
local syamoji = "\xf4\x80\x82\xb0"

local ztmy_moji_map = {
  ["NORMAL"] = neko,
  ["VISUAL"] = saturn,
  ["V-LINE"] = saturn,
  ["V-BLOCK"] = saturn,
  ["INSERT"] = syamoji,
  ["COMMAND"] = obenkyo,
  ["TERMINAL"] = uniguri,
}
local mode = {
  "mode",
  fmt = function(str)
    local icon = ztmy_moji_map[str]
    if icon == nil then
      return str
    end

    return string.format("%s %s", icon, str)
  end,
}

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
    lualine_a = { mode },
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
