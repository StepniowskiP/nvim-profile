local status_ok_mason, mason = pcall(require, "mason")
local status_ok_mason_lspconfig, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok_mason and not status_ok_mason_lspconfig then
    return
end

local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})

mason_lspconfig.setup({
    -- list of servers for mason to install
    ensure_installed = {
        "html",
        "lua_ls",
        "pyright",
        "rust_analyzer",
        "yamlls",
        "zls"
    },
})

mason_tool_installer.setup({
    ensure_installed = {
      "ruff",
    },
  })