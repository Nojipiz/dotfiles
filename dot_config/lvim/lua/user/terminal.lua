--
-- Terminal Config
--
lvim.builtin.terminal.active = true
lvim.builtin.terminal.direction = "horizontal"
lvim.builtin.terminal.shell = "/bin/zsh"
lvim.builtin.terminal.open_mapping = [[<c-t>]]

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', 'ii', [[<C-\><C-n>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
