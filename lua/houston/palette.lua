-- Houston palette
-- Extracted from withastro/houston-vscode (MIT)
-- https://github.com/withastro/houston-vscode/blob/main/themes/houston.json

local M = {}

-- Backgrounds
M.bg            = "#17191e" -- editor.background
M.bg_panel      = "#23262d" -- sideBar / inactive tab / panel
M.bg_float      = "#343841" -- editor widget / popup
M.bg_highlight  = "#23262d" -- current line
M.bg_selection  = "#3a2840" -- selection (de-alpha'd from #ad5dca44 over bg)
M.bg_search     = "#ea5c0055"
M.bg_statusline = "#17548b" -- statusBar.background

-- Foregrounds
M.fg          = "#eef0f9" -- editor.foreground
M.fg_dim      = "#bfc1c9" -- sidebar text
M.fg_muted    = "#858b98" -- inactive tab / line nr active
M.fg_subtle   = "#545864" -- line numbers / comments

-- Accents (the 11 syntax colors)
M.blue        = "#54b9ff"
M.cyan        = "#00daef" -- focus accent
M.mint        = "#4bf3c8" -- strings, additions
M.peach       = "#ffd493" -- constants, types, modifications
M.magenta     = "#cc75f4" -- keywords
M.lavender    = "#acafff" -- builtin / defaultLibrary
M.red         = "#f44747" -- errors
M.pink        = "#f4587e" -- deletions
M.white       = "#ffffff"

-- Diagnostics
M.diag = {
  error = M.red,
  warn  = M.peach,
  info  = M.blue,
  hint  = M.cyan,
}

-- Git
M.git = {
  added    = M.mint,
  modified = M.peach,
  deleted  = M.pink,
  ignored  = M.fg_muted,
  conflict = M.cyan,
}

-- Diff backgrounds (subtle, derived from accent hues)
M.diff = {
  add    = "#1a2d28",
  change = "#2a2620",
  delete = "#2d1a23",
  text   = "#1d3d36",
}

-- Terminal ANSI colors (lifted directly from VSCode theme)
M.term = {
  black          = "#17191e",
  red            = "#dc3657",
  green          = "#23d18b",
  yellow         = "#ffc368",
  blue           = "#2b7eca",
  magenta        = "#ad5dca",
  cyan           = "#24c0cf",
  white          = "#eef0f9",
  bright_black   = "#545864",
  bright_red     = "#f4587e",
  bright_green   = "#4bf3c8",
  bright_yellow  = "#ffd493",
  bright_blue    = "#54b9ff",
  bright_magenta = "#cc75f4",
  bright_cyan    = "#00daef",
  bright_white   = "#fafafa",
}

return M
