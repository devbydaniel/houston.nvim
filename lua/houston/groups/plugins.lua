-- Highlight groups for popular plugins
local M = {}

function M.get(c, _opts)
  return {
    -----------------------------------------------------------
    -- gitsigns.nvim
    -----------------------------------------------------------
    GitSignsAdd = { fg = c.git.added },
    GitSignsChange = { fg = c.git.modified },
    GitSignsDelete = { fg = c.git.deleted },
    GitSignsAddNr = { fg = c.git.added },
    GitSignsChangeNr = { fg = c.git.modified },
    GitSignsDeleteNr = { fg = c.git.deleted },
    GitSignsAddLn = { bg = c.diff.add },
    GitSignsChangeLn = { bg = c.diff.change },
    GitSignsDeleteLn = { bg = c.diff.delete },
    GitSignsCurrentLineBlame = { fg = c.fg_subtle, italic = true },

    -----------------------------------------------------------
    -- telescope.nvim
    -----------------------------------------------------------
    TelescopeNormal = { fg = c.fg, bg = c.bg_float },
    TelescopeBorder = { fg = c.bg_float, bg = c.bg_float },
    TelescopeTitle = { fg = c.cyan, bg = c.bg_float, bold = true },
    TelescopePromptNormal = { fg = c.fg, bg = c.bg_panel },
    TelescopePromptBorder = { fg = c.bg_panel, bg = c.bg_panel },
    TelescopePromptTitle = { fg = c.bg, bg = c.cyan, bold = true },
    TelescopePromptPrefix = { fg = c.cyan, bg = c.bg_panel },
    TelescopePromptCounter = { fg = c.fg_muted, bg = c.bg_panel },
    TelescopeResultsNormal = { fg = c.fg, bg = c.bg_float },
    TelescopeResultsBorder = { fg = c.bg_float, bg = c.bg_float },
    TelescopeResultsTitle = { fg = c.bg_float, bg = c.bg_float },
    TelescopePreviewNormal = { fg = c.fg, bg = c.bg_float },
    TelescopePreviewBorder = { fg = c.bg_float, bg = c.bg_float },
    TelescopePreviewTitle = { fg = c.bg, bg = c.mint, bold = true },
    TelescopeSelection = { fg = c.fg, bg = c.bg_panel, bold = true },
    TelescopeSelectionCaret = { fg = c.cyan, bg = c.bg_panel },
    TelescopeMultiSelection = { fg = c.peach, bg = c.bg_panel },
    TelescopeMatching = { fg = c.cyan, bold = true },

    -----------------------------------------------------------
    -- nvim-tree
    -----------------------------------------------------------
    NvimTreeNormal = { fg = c.fg_dim, bg = c.bg_panel },
    NvimTreeNormalNC = { fg = c.fg_dim, bg = c.bg_panel },
    NvimTreeRootFolder = { fg = c.cyan, bold = true },
    NvimTreeFolderName = { fg = c.fg_dim },
    NvimTreeFolderIcon = { fg = c.peach },
    NvimTreeOpenedFolderName = { fg = c.fg, bold = true },
    NvimTreeEmptyFolderName = { fg = c.fg_muted },
    NvimTreeFileName = { fg = c.fg_dim },
    NvimTreeOpenedFile = { fg = c.fg, bold = true },
    NvimTreeSpecialFile = { fg = c.lavender },
    NvimTreeIndentMarker = { fg = c.bg_float },
    NvimTreeWinSeparator = { fg = c.bg_float, bg = c.bg_panel },
    NvimTreeGitDirty = { fg = c.git.modified },
    NvimTreeGitNew = { fg = c.git.added },
    NvimTreeGitDeleted = { fg = c.git.deleted },
    NvimTreeGitStaged = { fg = c.git.added },
    NvimTreeGitMerge = { fg = c.git.conflict },
    NvimTreeGitRenamed = { fg = c.peach },
    NvimTreeGitIgnored = { fg = c.git.ignored },
    NvimTreeSymlink = { fg = c.cyan },
    NvimTreeCursorLine = { bg = c.bg_float },

    -----------------------------------------------------------
    -- neo-tree.nvim
    -----------------------------------------------------------
    NeoTreeNormal = { fg = c.fg_dim, bg = c.bg_panel },
    NeoTreeNormalNC = { fg = c.fg_dim, bg = c.bg_panel },
    NeoTreeRootName = { fg = c.cyan, bold = true },
    NeoTreeDirectoryName = { fg = c.fg_dim },
    NeoTreeDirectoryIcon = { fg = c.peach },
    NeoTreeFileName = { fg = c.fg_dim },
    NeoTreeFileNameOpened = { fg = c.fg, bold = true },
    NeoTreeIndentMarker = { fg = c.bg_float },
    NeoTreeWinSeparator = { fg = c.bg_float, bg = c.bg_panel },
    NeoTreeGitAdded = { fg = c.git.added },
    NeoTreeGitModified = { fg = c.git.modified },
    NeoTreeGitDeleted = { fg = c.git.deleted },
    NeoTreeGitConflict = { fg = c.git.conflict },
    NeoTreeGitIgnored = { fg = c.git.ignored },
    NeoTreeGitUntracked = { fg = c.mint },
    NeoTreeSymbolicLinkTarget = { fg = c.cyan },

    -----------------------------------------------------------
    -- bufferline.nvim
    -----------------------------------------------------------
    BufferLineFill = { bg = c.bg_panel },
    BufferLineBackground = { fg = c.fg_muted, bg = c.bg_panel },
    BufferLineBufferVisible = { fg = c.fg_muted, bg = c.bg_panel },
    BufferLineBufferSelected = { fg = c.fg, bg = c.bg, bold = true },
    BufferLineSeparator = { fg = c.bg_panel, bg = c.bg_panel },
    BufferLineSeparatorVisible = { fg = c.bg_panel, bg = c.bg_panel },
    BufferLineSeparatorSelected = { fg = c.cyan, bg = c.bg },
    BufferLineIndicatorSelected = { fg = c.cyan, bg = c.bg },
    BufferLineModified = { fg = c.peach, bg = c.bg_panel },
    BufferLineModifiedVisible = { fg = c.peach, bg = c.bg_panel },
    BufferLineModifiedSelected = { fg = c.peach, bg = c.bg },
    BufferLineCloseButton = { fg = c.fg_muted, bg = c.bg_panel },
    BufferLineCloseButtonVisible = { fg = c.fg_muted, bg = c.bg_panel },
    BufferLineCloseButtonSelected = { fg = c.fg, bg = c.bg },

    -----------------------------------------------------------
    -- which-key.nvim
    -----------------------------------------------------------
    WhichKey = { fg = c.cyan },
    WhichKeyGroup = { fg = c.magenta },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeparator = { fg = c.fg_muted },
    WhichKeyFloat = { bg = c.bg_float },
    WhichKeyBorder = { fg = c.fg_muted, bg = c.bg_float },
    WhichKeyValue = { fg = c.fg_muted },

    -----------------------------------------------------------
    -- indent-blankline.nvim (v3 / ibl)
    -----------------------------------------------------------
    IblIndent = { fg = c.bg_float },
    IblWhitespace = { fg = c.bg_float },
    IblScope = { fg = c.fg_muted },

    -----------------------------------------------------------
    -- noice.nvim
    -----------------------------------------------------------
    NoiceCmdline = { fg = c.fg, bg = c.bg_float },
    NoiceCmdlineIcon = { fg = c.cyan },
    NoiceCmdlinePopup = { fg = c.fg, bg = c.bg_float },
    NoiceCmdlinePopupBorder = { fg = c.cyan, bg = c.bg_float },
    NoiceConfirm = { fg = c.fg, bg = c.bg_float },
    NoiceConfirmBorder = { fg = c.cyan, bg = c.bg_float },
    NoicePopup = { fg = c.fg, bg = c.bg_float },
    NoicePopupBorder = { fg = c.fg_muted, bg = c.bg_float },

    -----------------------------------------------------------
    -- nvim-notify
    -----------------------------------------------------------
    NotifyERRORBorder = { fg = c.diag.error, bg = c.bg_float },
    NotifyWARNBorder = { fg = c.diag.warn, bg = c.bg_float },
    NotifyINFOBorder = { fg = c.diag.info, bg = c.bg_float },
    NotifyDEBUGBorder = { fg = c.fg_muted, bg = c.bg_float },
    NotifyTRACEBorder = { fg = c.lavender, bg = c.bg_float },
    NotifyERRORIcon = { fg = c.diag.error },
    NotifyWARNIcon = { fg = c.diag.warn },
    NotifyINFOIcon = { fg = c.diag.info },
    NotifyDEBUGIcon = { fg = c.fg_muted },
    NotifyTRACEIcon = { fg = c.lavender },
    NotifyERRORTitle = { fg = c.diag.error, bold = true },
    NotifyWARNTitle = { fg = c.diag.warn, bold = true },
    NotifyINFOTitle = { fg = c.diag.info, bold = true },
    NotifyDEBUGTitle = { fg = c.fg_muted, bold = true },
    NotifyTRACETitle = { fg = c.lavender, bold = true },
    NotifyERRORBody = { fg = c.fg, bg = c.bg_float },
    NotifyWARNBody = { fg = c.fg, bg = c.bg_float },
    NotifyINFOBody = { fg = c.fg, bg = c.bg_float },
    NotifyDEBUGBody = { fg = c.fg, bg = c.bg_float },
    NotifyTRACEBody = { fg = c.fg, bg = c.bg_float },

    -----------------------------------------------------------
    -- nvim-cmp
    -----------------------------------------------------------
    CmpItemAbbr = { fg = c.fg },
    CmpItemAbbrDeprecated = { fg = c.fg_muted, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.cyan, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.cyan, bold = true },
    CmpItemMenu = { fg = c.fg_muted, italic = true },
    CmpItemKindDefault = { fg = c.fg_muted },
    CmpItemKindText = { fg = c.fg },
    CmpItemKindKeyword = { fg = c.magenta },
    CmpItemKindVariable = { fg = c.fg },
    CmpItemKindConstant = { fg = c.peach },
    CmpItemKindReference = { fg = c.fg },
    CmpItemKindValue = { fg = c.peach },
    CmpItemKindFunction = { fg = c.blue },
    CmpItemKindMethod = { fg = c.blue },
    CmpItemKindConstructor = { fg = c.peach },
    CmpItemKindClass = { fg = c.peach },
    CmpItemKindInterface = { fg = c.peach },
    CmpItemKindStruct = { fg = c.peach },
    CmpItemKindEvent = { fg = c.lavender },
    CmpItemKindEnum = { fg = c.peach },
    CmpItemKindUnit = { fg = c.peach },
    CmpItemKindModule = { fg = c.lavender },
    CmpItemKindProperty = { fg = c.fg },
    CmpItemKindField = { fg = c.fg },
    CmpItemKindTypeParameter = { fg = c.peach },
    CmpItemKindEnumMember = { fg = c.fg },
    CmpItemKindOperator = { fg = c.fg },
    CmpItemKindSnippet = { fg = c.mint },
    CmpItemKindFile = { fg = c.blue },
    CmpItemKindFolder = { fg = c.peach },
    CmpItemKindColor = { fg = c.cyan },

    -----------------------------------------------------------
    -- blink.cmp
    -----------------------------------------------------------
    BlinkCmpMenu = { fg = c.fg, bg = c.bg_float },
    BlinkCmpMenuBorder = { fg = c.fg_muted, bg = c.bg_float },
    BlinkCmpMenuSelection = { fg = c.fg, bg = c.bg_panel, bold = true },
    BlinkCmpLabel = { fg = c.fg },
    BlinkCmpLabelDeprecated = { fg = c.fg_muted, strikethrough = true },
    BlinkCmpLabelMatch = { fg = c.cyan, bold = true },
    BlinkCmpKind = { fg = c.lavender },
    BlinkCmpDoc = { fg = c.fg, bg = c.bg_float },
    BlinkCmpDocBorder = { fg = c.fg_muted, bg = c.bg_float },
    BlinkCmpSignatureHelp = { fg = c.fg, bg = c.bg_float },
    BlinkCmpSignatureHelpBorder = { fg = c.fg_muted, bg = c.bg_float },
    BlinkCmpSignatureHelpActiveParameter = { fg = c.cyan, bold = true },

    -----------------------------------------------------------
    -- trouble.nvim
    -----------------------------------------------------------
    TroubleNormal = { fg = c.fg, bg = c.bg_panel },
    TroubleText = { fg = c.fg },
    TroubleCount = { fg = c.cyan, bg = c.bg_panel, bold = true },
    TroubleSource = { fg = c.fg_muted },
    TroubleLocation = { fg = c.fg_muted },
    TroubleFile = { fg = c.blue },
    TroubleFoldIcon = { fg = c.cyan },
    TroubleIndent = { fg = c.bg_float },

    -----------------------------------------------------------
    -- todo-comments.nvim
    -----------------------------------------------------------
    TodoFgTODO = { fg = c.cyan },
    TodoFgFIX = { fg = c.red },
    TodoFgHACK = { fg = c.peach },
    TodoFgWARN = { fg = c.peach },
    TodoFgPERF = { fg = c.lavender },
    TodoFgNOTE = { fg = c.blue },
    TodoFgTEST = { fg = c.mint },
    TodoBgTODO = { fg = c.bg, bg = c.cyan, bold = true },
    TodoBgFIX = { fg = c.bg, bg = c.red, bold = true },
    TodoBgHACK = { fg = c.bg, bg = c.peach, bold = true },
    TodoBgWARN = { fg = c.bg, bg = c.peach, bold = true },
    TodoBgPERF = { fg = c.bg, bg = c.lavender, bold = true },
    TodoBgNOTE = { fg = c.bg, bg = c.blue, bold = true },
    TodoBgTEST = { fg = c.bg, bg = c.mint, bold = true },
    TodoSignTODO = { fg = c.cyan },
    TodoSignFIX = { fg = c.red },
    TodoSignHACK = { fg = c.peach },
    TodoSignWARN = { fg = c.peach },
    TodoSignPERF = { fg = c.lavender },
    TodoSignNOTE = { fg = c.blue },
    TodoSignTEST = { fg = c.mint },

    -----------------------------------------------------------
    -- flash.nvim
    -----------------------------------------------------------
    FlashBackdrop = { fg = c.fg_subtle },
    FlashMatch = { fg = c.bg, bg = c.cyan, bold = true },
    FlashCurrent = { fg = c.bg, bg = c.peach, bold = true },
    FlashLabel = { fg = c.bg, bg = c.magenta, bold = true },
    FlashPrompt = { fg = c.fg, bg = c.bg_float },
    FlashPromptIcon = { fg = c.cyan },

    -----------------------------------------------------------
    -- mini.nvim (selected modules)
    -----------------------------------------------------------
    -- mini.statusline
    MiniStatuslineModeNormal = { fg = c.bg, bg = c.cyan, bold = true },
    MiniStatuslineModeInsert = { fg = c.bg, bg = c.mint, bold = true },
    MiniStatuslineModeVisual = { fg = c.bg, bg = c.magenta, bold = true },
    MiniStatuslineModeReplace = { fg = c.bg, bg = c.pink, bold = true },
    MiniStatuslineModeCommand = { fg = c.bg, bg = c.peach, bold = true },
    MiniStatuslineModeOther = { fg = c.bg, bg = c.lavender, bold = true },
    MiniStatuslineDevinfo = { fg = c.fg, bg = c.bg_panel },
    MiniStatuslineFilename = { fg = c.fg_muted, bg = c.bg_panel },
    MiniStatuslineFileinfo = { fg = c.fg, bg = c.bg_panel },
    MiniStatuslineInactive = { fg = c.fg_muted, bg = c.bg_panel },
    -- mini.indentscope
    MiniIndentscopeSymbol = { fg = c.fg_muted },
    MiniIndentscopePrefix = { nocombine = true },
    -- mini.cursorword
    MiniCursorword = { bg = c.bg_panel },
    MiniCursorwordCurrent = { bg = c.bg_panel },
    -- mini.diff
    MiniDiffSignAdd = { fg = c.git.added },
    MiniDiffSignChange = { fg = c.git.modified },
    MiniDiffSignDelete = { fg = c.git.deleted },

    -----------------------------------------------------------
    -- lazy.nvim
    -----------------------------------------------------------
    LazyNormal = { fg = c.fg, bg = c.bg_float },
    LazyButton = { fg = c.fg, bg = c.bg_panel },
    LazyButtonActive = { fg = c.bg, bg = c.cyan, bold = true },
    LazyH1 = { fg = c.bg, bg = c.cyan, bold = true },
    LazyH2 = { fg = c.cyan, bold = true },
    LazySpecial = { fg = c.cyan },
    LazyProp = { fg = c.lavender },
    LazyValue = { fg = c.peach },
    LazyDir = { fg = c.blue },
    LazyUrl = { fg = c.blue, underline = true },
    LazyCommit = { fg = c.mint },
    LazyReasonPlugin = { fg = c.peach },
    LazyReasonEvent = { fg = c.lavender },
    LazyReasonStart = { fg = c.cyan },
    LazyReasonRuntime = { fg = c.lavender },
    LazyReasonCmd = { fg = c.peach },
    LazyReasonSource = { fg = c.mint },
    LazyReasonImport = { fg = c.fg },
    LazyReasonFt = { fg = c.lavender },
    LazyReasonKeys = { fg = c.cyan },
  }
end

return M
