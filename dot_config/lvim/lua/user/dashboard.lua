--
-- Dashboard configuration file
--

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
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

-- local status_ok, dashboard = pcall(require, "alpha.themes.dashboard")
-- if (status_ok) then
--   local function button(sc, txt, keybind, keybind_opts)
--     local b = dashboard.button(sc, txt, keybind, keybind_opts)
--     b.opts.hl_shortcut = "Macro"
--     return b
--   end

--   local buttons = lvim.builtin.alpha.dashboard.section.buttons.val
--   buttons[1] = buttons[2]
--   buttons[2] = buttons[4]
--   buttons[4] = button("d", lvim.icons.ui.Stacks .. " Database Mode", "<CMD>DBUI<CR>")
--   buttons[5] = button("u", lvim.icons.ui.Bug .. "  Org Mode", "<CMD>e ~/Dropbox/OrgAgenda/Daily Agenda.org<cr>")
-- end

local text = require "lvim.interface.text"
lvim.builtin.alpha.dashboard.section.footer.val = text.align_center({ width = 0 }, {
  "Talk is cheap. Show me the code! - Linus Torvalds",
  "",
  "               Powered by Lunarvim               ",
  require("lvim.utils.git").get_lvim_version()
}, 0.5)
