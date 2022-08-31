-- General
vim.opt.number = false
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.keys.insert_mode["ii"] = "<Esc>"
lvim.leader = "space"

-- Dashboard Configuration File
require('user.dashboard')

-- Visuals Configuration File
require('user.visuals')

-- Terminal Configuration File
require('user.terminal')

-- LuaLine Configuration File
require('user.lualine')

-- intellisense Configuration File
require('user.intellisense')

--Orgmode
require('user.orgmode')

-- Additional Plugins
lvim.plugins = {
  { -- Theme
    "folke/tokyonight.nvim"
  },
  { -- Plugins for databases
    "kristijanhusak/vim-dadbod-ui",
    requires = {
      "tpope/vim-dadbod",
      "kristijanhusak/vim-dadbod-completion"
    }
  },
  {
    "nvim-orgmode/orgmode",
    config = function()
      require('orgmode').setup {}
    end
  }
  -- { -- Scala support
  --   "scalameta/nvim-metals",
  --   config = function()
  --     require("user.metals").config()
  --   end,
  -- },
}
