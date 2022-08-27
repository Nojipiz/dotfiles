-- General
vim.opt.number = false
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.keys.insert_mode["ii"] = "<Esc>"
lvim.leader = "space"

-- Visuals Configuration File
require('user.visuals')

-- Terminal Configuration File
require('user.terminal')

-- LuaLine Configuration File
require('user.lualine')

-- LuaLine Configuration File
require('user.intellisense')

-- Additional Plugins
lvim.plugins = {
  { -- Theme
    "sainnhe/edge"
  },
  { -- Plugins for databases
    "kristijanhusak/vim-dadbod-ui",
    requires = {
      "tpope/vim-dadbod",
      "kristijanhusak/vim-dadbod-completion"
    }
  },
  { -- Scala support
    "scalameta/nvim-metals",
    config = function()
      require("user.metals").config()
    end,
  },
}
