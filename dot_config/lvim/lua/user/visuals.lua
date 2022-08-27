--
-- Visuals Config File
--

-- Color scheme and details
lvim.colorscheme = "onedarker"
lvim.builtin.notify.active = true

-- Config for Neovide GUI
vim.o.guifont = "Fira Code:h9"

-- My own fast theme change function
lvim.keys.normal_mode["|"] = ":lua ToggleTheme() <cr> "
function ToggleTheme()
  if (vim.api.nvim_get_var("colors_name") == "onedarker") then
    vim.o.background = "light"
    vim.api.nvim_command("colorscheme edge")
  else
    vim.o.background = "dark"
    vim.api.nvim_command("colorscheme onedarker")
  end
end
