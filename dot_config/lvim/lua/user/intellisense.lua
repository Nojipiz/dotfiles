--
-- Code Completion Stuff
--

lvim.builtin.cmp.experimental.ghost_text = true
lvim.lsp.installer.setup.automatic_installation = false

-- Tree sitter
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "scala",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
  "org"
}

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  -- { command = "prettierd", filetypes = { "html", "vue", "css", "scss", "typescriptreact" } },
  { command = "scalafmt", arg = { "--stdin" } }
}

-- Databases
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.sql", "*.mysql", "*.pssql" },
  command = "lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })",
})

-- Tailwind
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "tailwindcss" })
-- require("lvim.lsp.manager").setup("tailwindcss", {
--   filetypes = { "typescriptreact" }
-- })

-- Scala
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.scala", "*.sbt" },
  command = "lua require('user.metals').config()"
})
