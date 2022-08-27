--
-- Visuals Config File
--

-- Color scheme and details
lvim.colorscheme = "onedarker"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.alpha.dashboard.section.header.val = {
  [[=================     ===============     ===============   ========  ========]],
  [[\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //]],
  [[||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||]],
  [[|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||]],
  [[||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||]],
  [[|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||]],
  [[||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||]],
  [[|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||]],
  [[||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||]],
  [[||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||]],
  [[||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||]],
  [[||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||]],
  [[||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||]],
  [[||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||]],
  [[||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||]],
  [[||.=='    _-'                                                     `' |  /==.||]],
  [[=='    _-'                        N E O V I M                         \/   `==]],
  [[\   _-'                                                                `-_   /]],
  [[ `''                                                                      ``' ]],
  [[                             Welcome back! Nojipiz                            ]],
}

lvim.builtin.alpha.dashboard.section.buttons.entries[5] = { "SPC ", "  Org Mode", "<CMD>lua print('Todo')<cr>" }

lvim.builtin.alpha.dashboard.section.footer.val = {
  "Talk is cheap. Show me the code!",
  "         Linus Torvalds         "
}

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
