-- general
vim.opt.relativenumber = true
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.leader = "space"
lvim.keys.insert_mode["ii"] = "<Esc>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

require('user.dashboard')
require('user.visuals')
require('user.terminal')
require('user.lualine')
require('user.intellisense')

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
  },
  { -- Orgmode Support
    "nvim-orgmode/orgmode",
    config = function()
      require("user.orgmode").setup()
    end,
    ft = { "org" },
  }
}
