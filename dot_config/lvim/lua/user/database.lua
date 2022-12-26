local M = {}

M.setup = function()
  vim.api.nvim_create_autocmd("FileType", {
    pattern = { "sql", "mysql" },
    callback = function()
      require('cmp').setup.buffer(
        { sources = { { name = 'vim-dadbod-completion' } } }
      )
    end
  })
end

return M
