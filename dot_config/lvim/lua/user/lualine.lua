-- Lualine config
local components = require("lvim.core.lualine.components")
lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.sections.lualine_a = { components.mode }
lvim.builtin.lualine.sections.lualine_b = { components.filename, components.location }
lvim.builtin.lualine.sections.lualine_c = { components.diagnostics }
lvim.builtin.lualine.sections.lualine_x = { components.python_env, components.filetype }
lvim.builtin.lualine.sections.lualine_y = { components.lsp, components.diff }
lvim.builtin.lualine.sections.lualine_z = { components.branch }
