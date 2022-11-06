-- general
vim.opt.relativenumber = true
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.leader = "space"
lvim.keys.insert_mode["ii"] = "<Esc>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

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

-- Orgmode Configuration File
require('user.org')

local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  -- for normal mode
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}

lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- Additional Plugins
lvim.plugins = {
  { -- Plugins for databases
    "kristijanhusak/vim-dadbod-ui",
    requires = {
      "tpope/vim-dadbod",
      "kristijanhusak/vim-dadbod-completion"
    }
  },
  { -- Scala Support
    "scalameta/nvim-metals",
    config = function()
      require("user.metals").config()
    end,
  }, {
    "nvim-orgmode/orgmode"
  }
}
