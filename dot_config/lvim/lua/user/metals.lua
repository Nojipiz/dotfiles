local M = {}

M.config = function()
  local metals_config = require("metals").bare_config()
  metals_config.on_attach = require("lvim.lsp").common_on_attach
  metals_config.settings = {
    showImplicitArguments = true,
    showInferredType = true,
    excludedPackages = {},
  }
  metals_config.init_options.statusBarProvider = false
  require("metals").initialize_or_attach { metals_config }
end

return M
