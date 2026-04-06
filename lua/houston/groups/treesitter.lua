-- Treesitter `@`-prefixed capture groups
-- Reference: `:help treesitter-highlight-groups`
-- Mapped from the Houston VSCode TextMate scopes.
local M = {}

function M.get(c, opts)
  local italic = opts.italic_comments

  return {
    -----------------------------------------------------------
    -- Identifiers
    -----------------------------------------------------------
    -- `variable`, `variable.other.readwrite` → mint
    ["@variable"] = { fg = c.mint },
    -- `variable.language` (this/self) → lavender
    ["@variable.builtin"] = { fg = c.lavender },
    -- `variable.parameter.function.js` → mint
    ["@variable.parameter"] = { fg = c.mint },
    ["@variable.parameter.builtin"] = { fg = c.lavender },
    -- Object property access → mint (`support.variable.property`, `meta.property.object`)
    ["@variable.member"] = { fg = c.mint },

    -- Constants → peach (`constant`, `constant.numeric`)
    ["@constant"] = { fg = c.peach },
    ["@constant.builtin"] = { fg = c.peach }, -- `constant.language` (true/false/null)
    ["@constant.macro"] = { fg = c.lavender },

    -- Modules / namespaces → lavender (`entity.name.namespace`, `support.module.node`)
    ["@module"] = { fg = c.lavender },
    ["@module.builtin"] = { fg = c.lavender },
    ["@label"] = { fg = c.blue },

    -----------------------------------------------------------
    -- Literals
    -----------------------------------------------------------
    -- Strings → peach (`string`)
    ["@string"] = { fg = c.peach },
    ["@string.documentation"] = { fg = c.comment },
    -- `string.regexp` → fg
    ["@string.regexp"] = { fg = c.fg },
    -- `constant.character.escape` → fg
    ["@string.escape"] = { fg = c.fg },
    ["@string.special"] = { fg = c.fg },
    ["@string.special.symbol"] = { fg = c.peach },
    ["@string.special.url"] = { fg = c.blue, underline = true },
    ["@string.special.path"] = { fg = c.peach },

    ["@character"] = { fg = c.peach },
    ["@character.special"] = { fg = c.fg },

    ["@boolean"] = { fg = c.peach },
    ["@number"] = { fg = c.peach },
    ["@number.float"] = { fg = c.peach },

    -----------------------------------------------------------
    -- Types → lavender (`entity.name.type`, `support.type.primitive.ts`)
    -----------------------------------------------------------
    ["@type"] = { fg = c.lavender },
    ["@type.builtin"] = { fg = c.lavender },
    ["@type.definition"] = { fg = c.lavender },
    ["@type.qualifier"] = { fg = c.blue }, -- `storage.modifier`

    -- Decorators / attributes → lavender (entity.name)
    ["@attribute"] = { fg = c.lavender },
    ["@attribute.builtin"] = { fg = c.lavender },
    -- Object property keys → mint (`meta.object-literal.key`)
    ["@property"] = { fg = c.mint },

    -----------------------------------------------------------
    -- Functions → cyan (`entity.name.function`, `support.function`)
    -----------------------------------------------------------
    ["@function"] = { fg = c.cyan },
    ["@function.builtin"] = { fg = c.cyan },
    ["@function.call"] = { fg = c.cyan },
    ["@function.macro"] = { fg = c.cyan },
    ["@function.method"] = { fg = c.cyan },
    ["@function.method.call"] = { fg = c.cyan },

    -- Constructors are class names → lavender
    ["@constructor"] = { fg = c.lavender },
    -- Operators → fg (arithmetic, logical, etc.)
    ["@operator"] = { fg = c.fg },

    -----------------------------------------------------------
    -- Keywords → blue (`keyword`, `keyword.control`, `storage`)
    -----------------------------------------------------------
    ["@keyword"] = { fg = c.blue },
    ["@keyword.coroutine"] = { fg = c.blue },
    ["@keyword.function"] = { fg = c.blue }, -- `storage.type.function`
    ["@keyword.operator"] = { fg = c.blue }, -- new, delete, typeof, instanceof
    -- `keyword.operator.expression.import` → cyan (special-cased in Houston)
    ["@keyword.import"] = { fg = c.cyan },
    ["@keyword.type"] = { fg = c.blue },
    ["@keyword.modifier"] = { fg = c.blue },
    ["@keyword.repeat"] = { fg = c.blue },
    ["@keyword.return"] = { fg = c.blue },
    ["@keyword.debug"] = { fg = c.red },
    ["@keyword.exception"] = { fg = c.blue },
    ["@keyword.conditional"] = { fg = c.blue },
    ["@keyword.conditional.ternary"] = { fg = c.blue },
    ["@keyword.directive"] = { fg = c.blue },
    ["@keyword.directive.define"] = { fg = c.blue },

    -----------------------------------------------------------
    -- Punctuation → fg
    -----------------------------------------------------------
    ["@punctuation.delimiter"] = { fg = c.fg },
    ["@punctuation.bracket"] = { fg = c.fg },
    -- `punctuation.section.embedded` (template literal `${}`) → blue
    ["@punctuation.special"] = { fg = c.blue },

    -----------------------------------------------------------
    -- Comments → faded fg
    -----------------------------------------------------------
    ["@comment"] = { fg = c.comment, italic = italic },
    ["@comment.documentation"] = { fg = c.comment, italic = italic },
    ["@comment.error"] = { fg = c.red, bold = true },
    ["@comment.warning"] = { fg = c.peach, bold = true },
    ["@comment.todo"] = { fg = c.cyan, bold = true },
    ["@comment.note"] = { fg = c.blue, bold = true },

    -----------------------------------------------------------
    -- Markup (markdown, rst, etc.)
    -----------------------------------------------------------
    -- `markup.bold` → peach, `markup.italic` → blue
    ["@markup.strong"] = { fg = c.peach, bold = true },
    ["@markup.italic"] = { fg = c.blue, italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },

    -- Headings walk the Houston color wheel cool → warm.
    -- Mint stays out of the rotation so headings don't collide with `@variable`/`@property`.
    ["@markup.heading"] = { fg = c.cyan, bold = true },
    ["@markup.heading.1"] = { fg = c.cyan, bold = true },
    ["@markup.heading.2"] = { fg = c.blue, bold = true },
    ["@markup.heading.3"] = { fg = c.lavender, bold = true },
    ["@markup.heading.4"] = { fg = c.magenta, bold = true },
    ["@markup.heading.5"] = { fg = c.pink, bold = true },
    ["@markup.heading.6"] = { fg = c.peach, bold = true },
    -- Markdown-specific aliases (some plugins use the .markdown suffix)
    ["@markup.heading.1.markdown"] = { fg = c.cyan, bold = true },
    ["@markup.heading.2.markdown"] = { fg = c.blue, bold = true },
    ["@markup.heading.3.markdown"] = { fg = c.lavender, bold = true },
    ["@markup.heading.4.markdown"] = { fg = c.magenta, bold = true },
    ["@markup.heading.5.markdown"] = { fg = c.pink, bold = true },
    ["@markup.heading.6.markdown"] = { fg = c.peach, bold = true },

    -- `markup.quote` → faded white
    ["@markup.quote"] = { fg = c.comment, italic = true },
    ["@markup.math"] = { fg = c.cyan },
    ["@markup.environment"] = { fg = c.blue },
    ["@markup.environment.name"] = { fg = c.lavender },

    -- `markup.underline.link` → blue, link titles → cyan
    ["@markup.link"] = { fg = c.blue },
    ["@markup.link.label"] = { fg = c.cyan },
    ["@markup.link.url"] = { fg = c.blue, underline = true },

    -- `markup.inline.raw` → peach
    ["@markup.raw"] = { fg = c.peach },
    ["@markup.raw.block"] = { fg = c.peach },

    -- List punctuation → mint
    ["@markup.list"] = { fg = c.mint },
    ["@markup.list.checked"] = { fg = c.mint },
    ["@markup.list.unchecked"] = { fg = c.fg_muted },

    -----------------------------------------------------------
    -- Diff (conventional: green=added, red=removed, yellow=changed)
    -- Matches the gitsigns / git decoration colors for consistency.
    -----------------------------------------------------------
    ["@diff.plus"] = { fg = c.mint },
    ["@diff.minus"] = { fg = c.pink },
    ["@diff.delta"] = { fg = c.peach },

    -----------------------------------------------------------
    -- Tags (HTML / JSX / Astro / Vue / Svelte)
    -----------------------------------------------------------
    -- `entity.name.tag` → blue
    ["@tag"] = { fg = c.blue },
    ["@tag.builtin"] = { fg = c.blue },
    -- `entity.other.attribute-name.html` → lavender (HTML attrs are lavender)
    ["@tag.attribute"] = { fg = c.lavender },
    -- Tag delimiters dim like in VSCode
    ["@tag.delimiter"] = { fg = c.fg_muted },

    -----------------------------------------------------------
    -- Misc
    -----------------------------------------------------------
    ["@none"] = {},
    ["@conceal"] = { fg = c.fg_muted },
    ["@error"] = { fg = c.red },
  }
end

return M
