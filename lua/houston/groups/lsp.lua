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
    LspInlayHint = { fg = c.fg_subtle, bg = c.bg_panel, italic = true },

    -- LSP semantic tokens
    ["@lsp.type.class"] = { fg = c.peach },
    ["@lsp.type.comment"] = {},
    ["@lsp.type.decorator"] = { fg = c.lavender },
    ["@lsp.type.enum"] = { fg = c.peach },
    ["@lsp.type.enumMember"] = { fg = c.fg },
    ["@lsp.type.function"] = { fg = c.blue },
    ["@lsp.type.interface"] = { fg = c.peach },
    ["@lsp.type.keyword"] = { fg = c.magenta },
    ["@lsp.type.macro"] = { fg = c.lavender },
    ["@lsp.type.method"] = { fg = c.blue },
    ["@lsp.type.modifier"] = { fg = c.magenta },
    ["@lsp.type.namespace"] = { fg = c.fg },
    ["@lsp.type.number"] = { fg = c.peach },
    ["@lsp.type.operator"] = { fg = c.fg },
    ["@lsp.type.parameter"] = { fg = c.fg },
    ["@lsp.type.property"] = { fg = c.fg },
    ["@lsp.type.regexp"] = { fg = c.cyan },
    ["@lsp.type.string"] = { fg = c.mint },
    ["@lsp.type.struct"] = { fg = c.peach },
    ["@lsp.type.type"] = { fg = c.peach },
    ["@lsp.type.typeParameter"] = { fg = c.peach },
    ["@lsp.type.variable"] = { fg = c.fg },

    ["@lsp.typemod.variable.defaultLibrary"] = { fg = c.lavender },
    ["@lsp.typemod.variable.constant"] = { fg = c.peach },
    ["@lsp.typemod.variable.readonly"] = { fg = c.peach },
    ["@lsp.typemod.function.defaultLibrary"] = { fg = c.blue },
    ["@lsp.typemod.method.defaultLibrary"] = { fg = c.blue },
    ["@lsp.typemod.parameter.readonly"] = { fg = c.fg },
    ["@lsp.typemod.property.readonly"] = { fg = c.fg },
    ["@lsp.typemod.keyword.async"] = { fg = c.magenta },
    ["@lsp.typemod.keyword.documentation"] = { fg = c.magenta },
  }
end

return M
