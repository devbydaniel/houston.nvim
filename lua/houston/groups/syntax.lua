-- Legacy vim syntax groups (`:help group-name`)
-- Mapped from the Houston VSCode TextMate scopes.
local M = {}

function M.get(c, opts)
  local italic = opts.italic_comments

  return {
    -- Comments → faded white (`comment` scope)
    Comment = { fg = c.comment, italic = italic },

    -- Constants → peach (`constant`, `constant.numeric`, `constant.language`)
    Constant = { fg = c.peach },
    String = { fg = c.peach },
    Character = { fg = c.peach },
    Number = { fg = c.peach },
    Boolean = { fg = c.peach },
    Float = { fg = c.peach },

    -- Identifiers / variables → mint (`variable`, `variable.other.readwrite`)
    Identifier = { fg = c.mint },

    -- Functions → cyan (`entity.name.function`, `support.function`)
    Function = { fg = c.cyan },

    -- Keywords / control flow → blue (`keyword`, `keyword.control`, `storage`)
    Statement = { fg = c.blue },
    Conditional = { fg = c.blue },
    Repeat = { fg = c.blue },
    Label = { fg = c.blue },
    Operator = { fg = c.fg },
    Keyword = { fg = c.blue },
    Exception = { fg = c.blue },

    -- Preprocessor → blue/cyan
    -- `keyword.operator.expression.import` is the only "import-ish" thing in cyan
    PreProc = { fg = c.blue },
    Include = { fg = c.cyan },
    Define = { fg = c.blue },
    Macro = { fg = c.lavender },
    PreCondit = { fg = c.blue },

    -- Types → lavender (`entity.name.type`, `support.type.primitive`)
    Type = { fg = c.lavender },
    StorageClass = { fg = c.blue },
    Structure = { fg = c.blue },
    Typedef = { fg = c.lavender },

    -- Special characters
    Special = { fg = c.cyan },
    SpecialChar = { fg = c.fg }, -- `constant.character.escape` → fg
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
