-- Core editor highlight groups
local M = {}

function M.get(c, _opts)
  return {
    -- Base
    Normal       = { fg = c.fg, bg = c.bg },
    NormalNC     = { fg = c.fg, bg = c.bg },
    NormalFloat  = { fg = c.fg, bg = c.bg_float },
    FloatBorder  = { fg = c.fg_muted, bg = c.bg_float },
    FloatTitle   = { fg = c.cyan, bg = c.bg_float, bold = true },
    FloatFooter  = { fg = c.fg_muted, bg = c.bg_float },

    -- Cursor / lines
    Cursor        = { fg = c.bg, bg = c.fg },
    lCursor       = { fg = c.bg, bg = c.fg },
    CursorIM      = { fg = c.bg, bg = c.fg },
    CursorLine    = { bg = c.bg_highlight },
    CursorColumn  = { bg = c.bg_highlight },
    ColorColumn   = { bg = c.bg_panel },

    -- Line numbers
    LineNr        = { fg = c.fg_subtle },
    LineNrAbove   = { fg = c.fg_subtle },
    LineNrBelow   = { fg = c.fg_subtle },
    CursorLineNr  = { fg = c.fg, bold = true },
    SignColumn    = { fg = c.fg_muted, bg = c.bg },
    FoldColumn    = { fg = c.fg_subtle, bg = c.bg },
    Folded        = { fg = c.fg_muted, bg = c.bg_panel },

    -- Selection / search
    Visual        = { bg = c.bg_selection },
    VisualNOS     = { bg = c.bg_selection },
    Search        = { fg = c.bg, bg = c.peach },
    IncSearch     = { fg = c.bg, bg = c.cyan },
    CurSearch     = { fg = c.bg, bg = c.cyan },
    Substitute    = { fg = c.bg, bg = c.pink },
    MatchParen    = { fg = c.cyan, bold = true, underline = true },

    -- Statusline
    StatusLine    = { fg = c.fg, bg = c.bg_panel },
    StatusLineNC  = { fg = c.fg_muted, bg = c.bg_panel },

    -- Tabs
    TabLine       = { fg = c.fg_muted, bg = c.bg_panel },
    TabLineSel    = { fg = c.fg, bg = c.bg },
    TabLineFill   = { bg = c.bg_panel },

    -- Splits
    WinSeparator  = { fg = c.bg_float },
    VertSplit     = { fg = c.bg_float },

    -- Popups
    Pmenu         = { fg = c.fg, bg = c.bg_float },
    PmenuSel      = { fg = c.fg, bg = c.bg_panel, bold = true },
    PmenuSbar     = { bg = c.bg_panel },
    PmenuThumb    = { bg = c.fg_subtle },
    PmenuKind     = { fg = c.lavender, bg = c.bg_float },
    PmenuKindSel  = { fg = c.lavender, bg = c.bg_panel },
    PmenuExtra    = { fg = c.fg_muted, bg = c.bg_float },
    PmenuExtraSel = { fg = c.fg_muted, bg = c.bg_panel },

    WildMenu      = { fg = c.bg, bg = c.cyan },

    -- Messages
    Title         = { fg = c.cyan, bold = true },
    Directory     = { fg = c.blue },
    ErrorMsg      = { fg = c.red, bold = true },
    WarningMsg    = { fg = c.peach },
    ModeMsg       = { fg = c.fg_muted, bold = true },
    MoreMsg       = { fg = c.cyan },
    Question      = { fg = c.cyan },
    MsgArea       = { fg = c.fg },
    MsgSeparator  = { fg = c.fg_muted, bg = c.bg_panel },

    -- Whitespace / non-text
    NonText       = { fg = c.fg_subtle },
    SpecialKey    = { fg = c.fg_subtle },
    Whitespace    = { fg = c.fg_subtle },
    EndOfBuffer   = { fg = c.bg },
    Conceal       = { fg = c.fg_muted },

    -- Spelling
    SpellBad      = { sp = c.red,      undercurl = true },
    SpellCap      = { sp = c.peach,    undercurl = true },
    SpellLocal    = { sp = c.cyan,     undercurl = true },
    SpellRare     = { sp = c.lavender, undercurl = true },

    -- Quickfix
    QuickFixLine  = { bg = c.bg_panel, bold = true },
    qfLineNr      = { fg = c.fg_subtle },
    qfFileName    = { fg = c.blue },

    -- Diff
    DiffAdd       = { bg = c.diff.add },
    DiffChange    = { bg = c.diff.change },
    DiffDelete    = { bg = c.diff.delete, fg = c.pink },
    DiffText      = { bg = c.diff.text },

    -- Misc
    Error         = { fg = c.red },
    Todo          = { fg = c.peach, bold = true },
  }
end

return M
