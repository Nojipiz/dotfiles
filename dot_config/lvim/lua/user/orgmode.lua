local M = {}

M.setup = function()
  local status_ok, org_mode = pcall(require, "orgmode")
  org_mode.setup_ts_grammar()
  if not status_ok then
    return
  end
  org_mode.setup {
    org_agenda_files = { "~/Dropbox/OrgAgenda/**/*" },
    org_default_notes_file = "~/Dropbox/OrgAgenda/Daily Agenda.org",
    org_agenda_templates = {
      T = {
        description = "Todo",
        template = "* TODO %?\n  DEADLINE: %T",
        target = "~/shared/orgs/todos.org",
      },
      w = {
        description = "Work todo",
        template = "* TODO %?\n  DEADLINE: %T",
        target = "~/shared/orgs/work.org",
      },
    },
    mappings = {
      global = {
        org_agenda = "go",
        org_capture = "gC",
      },
    },
  }
end

function os.capture(cmd, raw)
  local f = assert(io.popen(cmd, 'r'))
  local s = assert(f:read('*a'))
  f:close()
  if raw then return s end
  s = string.gsub(s, '^%s+', '')
  s = string.gsub(s, '%s+$', '')
  s = string.gsub(s, '[\n\r]+', ' ')
  return s
end

local function amount_of_orgs_equals(amount)
  local buf_list = vim.api.nvim_list_bufs()
  local org_buf_amount = 0
  local buf_amount = 0

  for _, element in ipairs(buf_list) do
    if vim.api.nvim_buf_is_loaded(element) then
      local buff_name = vim.api.nvim_buf_get_name(element)
      buf_amount = buf_amount + 1
      if string.match(buff_name, ".org") then
        org_buf_amount = org_buf_amount + 1
      end
    end
  end

  if amount == 0 then
    return buf_amount <= 1
  else
    return org_buf_amount <= amount
  end
end

-- Sync with dropbox. Is usefull in case of use tools like Orgzly
-- TODO: Fix this slow command
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "org" },
  callback = function()
    os.capture("dropbox-cli start >/dev/null 2>&1")
  end,
})

vim.api.nvim_create_autocmd({ "BufDelete", }, {
  pattern = { "*.org" },
  callback = function()
    if amount_of_orgs_equals(1) then
      os.capture("dropbox-cli stop >/dev/null 2>&1")
    end
  end,
})

-- TODO: Fix the single org close tab bug, that makes neovim slow
vim.api.nvim_create_autocmd({ "BufWinLeave" }, {
  pattern = { "*.org" },
  callback = function()
    if amount_of_orgs_equals(0) then
      os.capture("dropbox-cli stop >/dev/null 2>&1")
    end
  end,
})

return M
