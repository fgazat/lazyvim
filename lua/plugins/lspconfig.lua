local util = require("lspconfig.util")

-- local filter = {}

local filter = {
  "-",
  "+locdoc/doc_tools",
  "+tasklet",
  "+sandbox/tasklet",
  "+yt/go",
  "+noc/go",
  "+browser/backend/pkg/startrek",
}
if string.find(vim.api.nvim_buf_get_name(0), "/arcadia") == nil then
  filter = {}
end

return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      gopls = {
        cmd = { "/Users/azat-fg/go/bin/gopls" },
        settings = {
          gopls = {
            gofumpt = true,
            codelenses = {
              gc_details = false,
              generate = true,
              regenerate_cgo = true,
              run_govulncheck = true,
              test = true,
              tidy = true,
              upgrade_dependency = true,
              vendor = true,
            },
            analyses = { unusedparams = true, unusedwrite = true, shadow = true },
            hints = {
              assignVariableTypes = true,
              compositeLiteralFields = true,
              compositeLiteralTypes = true,
              constantValues = true,
              functionTypeParameters = true,
              parameterNames = true,
              rangeVariableTypes = true,
            },
            staticcheck = true,
            usePlaceholders = true,
            expandWorkspaceToModule = false,
            directoryFilters = filter,
            subdirWatchPatterns = "on",
          },
        },
      },
    },
  },
}
