-- LSP diagnostics, references, semantic tokens
local M = {}

function M.get(c, _opts)
  return {
    -- Diagnostics
    DiagnosticError = { fg = c.diag.error },
    DiagnosticWarn = { fg = c.diag.warn },
    DiagnosticInfo = { fg = c.diag.info },
    DiagnosticHint = { fg = c.diag.hint },
    DiagnosticOk = { fg = c.mint },

    DiagnosticVirtualTextError = { fg = c.diag.error, bg = c.bg },
    DiagnosticVirtualTextWarn = { fg = c.diag.warn, bg = c.bg },
    DiagnosticVirtualTextInfo = { fg = c.diag.info, bg = c.bg },
    DiagnosticVirtualTextHint = { fg = c.diag.hint, bg = c.bg },
    DiagnosticVirtualTextOk = { fg = c.mint, bg = c.bg },

    DiagnosticUnderlineError = { sp = c.diag.error, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.diag.warn, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.diag.info, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.diag.hint, undercurl = true },
    DiagnosticUnderlineOk = { sp = c.mint, undercurl = true },

    DiagnosticFloatingError = { fg = c.diag.error, bg = c.bg_float },
    DiagnosticFloatingWarn = { fg = c.diag.warn, bg = c.bg_float },
    DiagnosticFloatingInfo = { fg = c.diag.info, bg = c.bg_float },
    DiagnosticFloatingHint = { fg = c.diag.hint, bg = c.bg_float },
    DiagnosticFloatingOk = { fg = c.mint, bg = c.bg_float },

    DiagnosticSignError = { fg = c.diag.error },
    DiagnosticSignWarn = { fg = c.diag.warn },
    DiagnosticSignInfo = { fg = c.diag.info },
    DiagnosticSignHint = { fg = c.diag.hint },
    DiagnosticSignOk = { fg = c.mint },

    DiagnosticUnnecessary = { fg = c.fg_muted },
    DiagnosticDeprecated = { fg = c.fg_muted, strikethrough = true },

    -- LSP references / hover / signature
    LspReferenceText = { bg = c.bg_panel },
    LspReferenceRead = { bg = c.bg_panel },
    LspReferenceWrite = { bg = c.bg_panel },
    LspSignatureActiveParameter = { fg = c.cyan, bold = true },
    LspCodeLens = { fg = c.fg_muted },
    LspCodeLensSeparator = { fg = c.fg_muted },
    LspInlayHint = { fg = c.comment, bg = c.bg_panel, italic = true },

    -- LSP semantic tokens (mapped from Houston VSCode + semanticTokenColors override)
    -- Default semantic types
    ["@lsp.type.class"] = { fg = c.lavender }, -- entity.name.class
    ["@lsp.type.comment"] = {},
    ["@lsp.type.decorator"] = { fg = c.lavender },
    ["@lsp.type.enum"] = { fg = c.lavender }, -- entity.name.type
    ["@lsp.type.enumMember"] = { fg = c.fg }, -- semanticTokenColors override
    ["@lsp.type.function"] = { fg = c.cyan }, -- entity.name.function
    ["@lsp.type.interface"] = { fg = c.lavender }, -- entity.name.type
    ["@lsp.type.keyword"] = { fg = c.blue },
    ["@lsp.type.macro"] = { fg = c.lavender },
    ["@lsp.type.method"] = { fg = c.cyan },
    ["@lsp.type.modifier"] = { fg = c.blue }, -- storage.modifier
    ["@lsp.type.namespace"] = { fg = c.lavender }, -- entity.name.namespace
    ["@lsp.type.number"] = { fg = c.peach },
    ["@lsp.type.operator"] = { fg = c.fg },
    ["@lsp.type.parameter"] = { fg = c.mint }, -- variable.parameter.function.js
    ["@lsp.type.property"] = { fg = c.mint }, -- meta.object-literal.key / property
    ["@lsp.type.regexp"] = { fg = c.fg }, -- string.regexp → fg
    ["@lsp.type.string"] = { fg = c.peach },
    ["@lsp.type.struct"] = { fg = c.lavender }, -- entity.name.type
    ["@lsp.type.type"] = { fg = c.lavender }, -- entity.name.type
    ["@lsp.type.typeParameter"] = { fg = c.lavender },
    ["@lsp.type.variable"] = { fg = c.mint }, -- variable.other.readwrite

    -- Semantic token modifiers (from semanticTokenColors override)
    -- variable.constant → peach (override), variable.defaultLibrary → lavender (override)
    ["@lsp.typemod.variable.constant"] = { fg = c.peach },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = c.lavender },
    -- `const`-declared variables get the `readonly` modifier in TS LSP.
    -- VSCode TextMate has variable.other.constant → lavender, so map readonly → lavender
    -- to match the screenshot (purple `const` references).
    ["@lsp.typemod.variable.readonly"] = { fg = c.lavender },
    ["@lsp.typemod.variable.readonly.defaultLibrary"] = { fg = c.lavender },
    ["@lsp.typemod.function.defaultLibrary"] = { fg = c.cyan },
    ["@lsp.typemod.method.defaultLibrary"] = { fg = c.cyan },
    ["@lsp.typemod.parameter.readonly"] = { fg = c.mint },
    ["@lsp.typemod.property.readonly"] = { fg = c.mint },
    ["@lsp.typemod.keyword.async"] = { fg = c.blue },
    ["@lsp.typemod.keyword.documentation"] = { fg = c.blue },
  }
end

return M
