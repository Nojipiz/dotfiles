-- -- Load custom tree-sitter grammar for org filetype
-- require('orgmode').setup_ts_grammar()

-- -- Tree-sitter configuration
-- require 'nvim-treesitter.configs'.setup {
--   -- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting
--   highlight = {
--     enable = true,
--     additional_vim_regex_highlighting = { 'org' },
--   },
--   ensure_installed = { 'org' }, -- Or run :TSUpdate org
-- }

-- require('orgmode').setup({
--   org_agenda_files = { '~/Downloads/org/*', '~/Downloads/org/*' },
--   org_default_notes_file = '~/Downloads/org/test.org*',
-- })
