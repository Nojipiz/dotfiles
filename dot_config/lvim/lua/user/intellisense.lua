--
-- Code Completion Stuff
--

lvim.builtin.cmp.experimental.ghost_text = true
lvim.lsp.automatic_servers_installation = true

-- Tree sitter
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
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

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { exe = "prettierd", filetypes = { "html", "vue", "css", "scss" } },
  { exe = "scalafmt", arg = { "--stdin" } }
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
