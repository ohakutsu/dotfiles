local dap = require("dap")

require("dap-vscode-js").setup({
  debugger_path = vim.fn.stdpath("data") .. "/lazy/vscode-js-debug",
  adapters = {
    "pwa-node",
  },
})

for _, lang in ipairs({ "javascript" }) do
  dap.configurations[lang] = {
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch file (pwa-node)",
      program = "${file}",
      cwd = "${workspaceFolder}",
      resolveSourceMapLocations = {
        "${workspaceFolder}/**",
        "!**/node_modules/**",
      },
      sourceMaps = true,
    },
  }
end
