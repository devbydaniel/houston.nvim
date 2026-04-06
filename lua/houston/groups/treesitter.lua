-- Treesitter `@`-prefixed capture groups
-- Reference: `:help treesitter-highlight-groups`
local M = {}

function M.get(c, opts)
  local italic = opts.italic_comments

  return {
    -- Identifiers
    ["@variable"] = { fg = c.fg },
    ["@variable.builtin"] = { fg = c.lavender },
    ["@variable.parameter"] = { fg = c.fg },
    ["@variable.parameter.builtin"] = { fg = c.lavender },
    ["@variable.member"] = { fg = c.fg },

    ["@constant"] = { fg = c.peach },
    ["@constant.builtin"] = { fg = c.peach },
    ["@constant.macro"] = { fg = c.lavender },

    ["@module"] = { fg = c.fg },
    ["@module.builtin"] = { fg = c.lavender },
    ["@label"] = { fg = c.magenta },

    -- Literals
    ["@string"] = { fg = c.mint },
    ["@string.documentation"] = { fg = c.fg_muted },
    ["@string.regexp"] = { fg = c.cyan },
    ["@string.escape"] = { fg = c.cyan },
    ["@string.special"] = { fg = c.cyan },
    ["@string.special.symbol"] = { fg = c.peach },
    ["@string.special.url"] = { fg = c.blue, underline = true },
    ["@string.special.path"] = { fg = c.blue },

    ["@character"] = { fg = c.mint },
    ["@character.special"] = { fg = c.cyan },

    ["@boolean"] = { fg = c.peach },
    ["@number"] = { fg = c.peach },
    ["@number.float"] = { fg = c.peach },

    -- Types
    ["@type"] = { fg = c.peach },
    ["@type.builtin"] = { fg = c.peach },
    ["@type.definition"] = { fg = c.peach },
    ["@type.qualifier"] = { fg = c.magenta },

    ["@attribute"] = { fg = c.lavender },
    ["@attribute.builtin"] = { fg = c.lavender },
    ["@property"] = { fg = c.fg },

    -- Functions
    ["@function"] = { fg = c.blue },
    ["@function.builtin"] = { fg = c.blue },
    ["@function.call"] = { fg = c.blue },
    ["@function.macro"] = { fg = c.lavender },
    ["@function.method"] = { fg = c.blue },
    ["@function.method.call"] = { fg = c.blue },

    ["@constructor"] = { fg = c.peach },
    ["@operator"] = { fg = c.fg },

    -- Keywords
    ["@keyword"] = { fg = c.magenta },
    ["@keyword.coroutine"] = { fg = c.magenta },
    ["@keyword.function"] = { fg = c.magenta },
    ["@keyword.operator"] = { fg = c.magenta },
    ["@keyword.import"] = { fg = c.magenta },
    ["@keyword.type"] = { fg = c.magenta },
    ["@keyword.modifier"] = { fg = c.magenta },
    ["@keyword.repeat"] = { fg = c.magenta },
    ["@keyword.return"] = { fg = c.magenta },
    ["@keyword.debug"] = { fg = c.red },
    ["@keyword.exception"] = { fg = c.magenta },
    ["@keyword.conditional"] = { fg = c.magenta },
    ["@keyword.conditional.ternary"] = { fg = c.magenta },
    ["@keyword.directive"] = { fg = c.lavender },
    ["@keyword.directive.define"] = { fg = c.lavender },

    -- Punctuation
    ["@punctuation.delimiter"] = { fg = c.fg },
    ["@punctuation.bracket"] = { fg = c.fg },
    ["@punctuation.special"] = { fg = c.cyan },

    -- Comments
    ["@comment"] = { fg = c.fg_subtle, italic = italic },
    ["@comment.documentation"] = { fg = c.fg_subtle, italic = italic },
    ["@comment.error"] = { fg = c.red, bold = true },
    ["@comment.warning"] = { fg = c.peach, bold = true },
    ["@comment.todo"] = { fg = c.cyan, bold = true },
    ["@comment.note"] = { fg = c.blue, bold = true },

    -- Markup (markdown, rst, etc.)
    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },

    ["@markup.heading"] = { fg = c.cyan, bold = true },
    ["@markup.heading.1"] = { fg = c.cyan, bold = true },
    ["@markup.heading.2"] = { fg = c.blue, bold = true },
    ["@markup.heading.3"] = { fg = c.mint, bold = true },
    ["@markup.heading.4"] = { fg = c.peach, bold = true },
    ["@markup.heading.5"] = { fg = c.lavender, bold = true },
    ["@markup.heading.6"] = { fg = c.magenta, bold = true },

    ["@markup.quote"] = { fg = c.fg_muted, italic = true },
    ["@markup.math"] = { fg = c.cyan },
    ["@markup.environment"] = { fg = c.magenta },
    ["@markup.environment.name"] = { fg = c.peach },

    ["@markup.link"] = { fg = c.blue },
    ["@markup.link.label"] = { fg = c.cyan },
    ["@markup.link.url"] = { fg = c.blue, underline = true },

    ["@markup.raw"] = { fg = c.mint },
    ["@markup.raw.block"] = { fg = c.mint },

    ["@markup.list"] = { fg = c.cyan },
    ["@markup.list.checked"] = { fg = c.mint },
    ["@markup.list.unchecked"] = { fg = c.fg_muted },

    -- Diff
    ["@diff.plus"] = { fg = c.mint },
    ["@diff.minus"] = { fg = c.pink },
    ["@diff.delta"] = { fg = c.peach },

    -- Tags (HTML / JSX / Astro / Vue / Svelte)
    ["@tag"] = { fg = c.magenta },
    ["@tag.builtin"] = { fg = c.magenta },
    ["@tag.attribute"] = { fg = c.lavender },
    ["@tag.delimiter"] = { fg = c.fg_muted },

    -- Misc
    ["@none"] = {},
    ["@conceal"] = { fg = c.fg_muted },
    ["@error"] = { fg = c.red },
  }
end

return M
