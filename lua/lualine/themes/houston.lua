-- lualine theme for houston.nvim
-- Use with: require("lualine").setup({ options = { theme = "houston" } })

local p = require("houston.palette")

return {
  normal = {
    a = { fg = p.bg, bg = p.cyan,     gui = "bold" },
    b = { fg = p.fg, bg = p.bg_panel },
    c = { fg = p.fg_muted, bg = p.bg },
  },
  insert = {
    a = { fg = p.bg, bg = p.mint,     gui = "bold" },
    b = { fg = p.fg, bg = p.bg_panel },
    c = { fg = p.fg_muted, bg = p.bg },
  },
  visual = {
    a = { fg = p.bg, bg = p.magenta,  gui = "bold" },
    b = { fg = p.fg, bg = p.bg_panel },
    c = { fg = p.fg_muted, bg = p.bg },
  },
  replace = {
    a = { fg = p.bg, bg = p.pink,     gui = "bold" },
    b = { fg = p.fg, bg = p.bg_panel },
    c = { fg = p.fg_muted, bg = p.bg },
  },
  command = {
    a = { fg = p.bg, bg = p.peach,    gui = "bold" },
    b = { fg = p.fg, bg = p.bg_panel },
    c = { fg = p.fg_muted, bg = p.bg },
  },
  terminal = {
    a = { fg = p.bg, bg = p.lavender, gui = "bold" },
    b = { fg = p.fg, bg = p.bg_panel },
    c = { fg = p.fg_muted, bg = p.bg },
  },
  inactive = {
    a = { fg = p.fg_muted, bg = p.bg_panel },
    b = { fg = p.fg_muted, bg = p.bg_panel },
    c = { fg = p.fg_subtle, bg = p.bg },
  },
}
