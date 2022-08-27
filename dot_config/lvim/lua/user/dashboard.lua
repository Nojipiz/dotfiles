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

lvim.builtin.alpha.dashboard.section.buttons.entries[1] = lvim.builtin.alpha.dashboard.section.buttons.entries[2]
lvim.builtin.alpha.dashboard.section.buttons.entries[2] = lvim.builtin.alpha.dashboard.section.buttons.entries[4]
lvim.builtin.alpha.dashboard.section.buttons.entries[4] = { "SPC d", "  Database Mode", "<CMD>DBUI<CR>" }
lvim.builtin.alpha.dashboard.section.buttons.entries[5] = { "SPC ", "  Org Mode", "<CMD>lua print('lol')<cr>" }

local text = require "lvim.interface.text"
lvim.builtin.alpha.dashboard.section.footer.val = text.align_center({ width = 0 }, {
  "Talk is cheap. Show me the code! - Linus Torvalds",
  "",
  "               Powered by Lunarvim               ",
  require("lvim.utils.git").get_lvim_version()
}, 0.5)
