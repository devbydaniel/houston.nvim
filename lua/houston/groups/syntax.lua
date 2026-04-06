-- Legacy vim syntax groups (`:help group-name`)
local M = {}

function M.get(c, opts)
  local italic = opts.italic_comments

  return {
    Comment = { fg = c.fg_subtle, italic = italic },

    Constant = { fg = c.peach },
    String = { fg = c.mint },
    Character = { fg = c.mint },
    Number = { fg = c.peach },
    Boolean = { fg = c.peach },
    Float = { fg = c.peach },

    Identifier = { fg = c.fg },
    Function = { fg = c.blue },

    Statement = { fg = c.magenta },
    Conditional = { fg = c.magenta },
    Repeat = { fg = c.magenta },
    Label = { fg = c.magenta },
    Operator = { fg = c.fg },
    Keyword = { fg = c.magenta },
    Exception = { fg = c.magenta },

    PreProc = { fg = c.lavender },
    Include = { fg = c.magenta },
    Define = { fg = c.magenta },
    Macro = { fg = c.lavender },
    PreCondit = { fg = c.magenta },

    Type = { fg = c.peach },
    StorageClass = { fg = c.magenta },
    Structure = { fg = c.magenta },
    Typedef = { fg = c.peach },

    Special = { fg = c.cyan },
    SpecialChar = { fg = c.cyan },
    Tag = { fg = c.blue },
    Delimiter = { fg = c.fg },
    SpecialComment = { fg = c.cyan, italic = italic },
    Debug = { fg = c.red },

    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = { italic = true },
  }
end

return M
