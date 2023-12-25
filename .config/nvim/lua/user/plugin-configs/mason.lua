local mason = require("mason")
local registry = require("mason-registry")

mason.setup()

-- Auto install packages
local function auto_install_packages()
  local packages = {
    "cspell",
  }
  for _, name in ipairs(packages) do
    if not registry.is_installed(name) then
      local pkg = registry.get_package(name)
      pkg:install()
    end
  end
end

local mason_auto_install_group = vim.api.nvim_create_augroup("MasonAutoInstallGroup", { clear = true })
vim.api.nvim_create_autocmd({ "VimEnter" }, {
  group = mason_auto_install_group,
  pattern = "*",
  callback = function()
    auto_install_packages()
  end,
})
