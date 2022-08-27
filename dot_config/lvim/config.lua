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

-- Programming languages that i use
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "scala",
  "yaml",
}

-- Lsp Configuration
lvim.lsp.automatic_servers_installation = true

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { exe = "prettierd", filetypes = { "html", "vue", "css", "scss" } },
  { exe = "scalafmt", arg = { "--stdin" } }
}

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

-- Databases
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.sql", "*.mysql", "*.pssql" },
  command = "lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })",
})

-- Tailwind
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "tailwindcss" })
require("lvim.lsp.manager").setup("tailwindcss", {
  filetypes = { "typescriptreact" }
})

-- Scala
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.scala", "*.sbt" },
  command = "lua require('user.metals').config()"
})
