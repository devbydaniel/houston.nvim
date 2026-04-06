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
    GitSignsCurrentLineBlame = { fg = c.comment, italic = true },

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
    CmpItemKindKeyword = { fg = c.blue },
    CmpItemKindVariable = { fg = c.mint },
    CmpItemKindConstant = { fg = c.peach },
    CmpItemKindReference = { fg = c.mint },
    CmpItemKindValue = { fg = c.peach },
    CmpItemKindFunction = { fg = c.cyan },
    CmpItemKindMethod = { fg = c.cyan },
    CmpItemKindConstructor = { fg = c.lavender },
    CmpItemKindClass = { fg = c.lavender },
    CmpItemKindInterface = { fg = c.lavender },
    CmpItemKindStruct = { fg = c.lavender },
    CmpItemKindEvent = { fg = c.lavender },
    CmpItemKindEnum = { fg = c.lavender },
    CmpItemKindUnit = { fg = c.peach },
    CmpItemKindModule = { fg = c.lavender },
    CmpItemKindProperty = { fg = c.mint },
    CmpItemKindField = { fg = c.mint },
    CmpItemKindTypeParameter = { fg = c.lavender },
    CmpItemKindEnumMember = { fg = c.fg },
    CmpItemKindOperator = { fg = c.fg },
    CmpItemKindSnippet = { fg = c.peach },
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
    -- leap.nvim
    -----------------------------------------------------------
    LeapMatch = { fg = c.bg, bg = c.cyan, bold = true },
    LeapLabel = { fg = c.bg, bg = c.magenta, bold = true },
    LeapLabelPrimary = { fg = c.bg, bg = c.magenta, bold = true },
    LeapLabelSecondary = { fg = c.bg, bg = c.lavender, bold = true },
    LeapLabelDimmed = { fg = c.fg_muted, bg = c.bg_panel },
    LeapBackdrop = { fg = c.fg_subtle },

    -----------------------------------------------------------
    -- mason.nvim
    -----------------------------------------------------------
    MasonNormal = { fg = c.fg, bg = c.bg_float },
    MasonHeader = { fg = c.bg, bg = c.cyan, bold = true },
    MasonHeaderSecondary = { fg = c.bg, bg = c.lavender, bold = true },
    MasonHeading = { fg = c.fg, bold = true },
    MasonHighlight = { fg = c.cyan },
    MasonHighlightBlock = { fg = c.bg, bg = c.cyan },
    MasonHighlightBlockBold = { fg = c.bg, bg = c.cyan, bold = true },
    MasonHighlightSecondary = { fg = c.lavender },
    MasonHighlightBlockSecondary = { fg = c.bg, bg = c.lavender },
    MasonHighlightBlockBoldSecondary = { fg = c.bg, bg = c.lavender, bold = true },
    MasonMuted = { fg = c.fg_muted },
    MasonMutedBlock = { fg = c.fg_muted, bg = c.bg_panel },
    MasonMutedBlockBold = { fg = c.fg, bg = c.bg_panel, bold = true },
    MasonError = { fg = c.red },
    MasonWarning = { fg = c.peach },
    MasonLink = { fg = c.blue, underline = true },
    MasonBackdrop = { bg = c.bg },
    MasonCursorLine = { bg = c.bg_panel },
    MasonInstall = { fg = c.mint },
    MasonUninstall = { fg = c.pink },
    MasonUninstallAll = { fg = c.red },
    MasonUpdate = { fg = c.peach },

    -----------------------------------------------------------
    -- outline.nvim (hedyhli/outline.nvim)
    -----------------------------------------------------------
    Outline = { fg = c.fg, bg = c.bg_panel },
    OutlineGuides = { fg = c.bg_float },
    OutlineConnector = { fg = c.bg_float },
    OutlineFoldMarker = { fg = c.fg_muted },
    OutlineCurrent = { fg = c.cyan, bold = true },
    OutlineDetails = { fg = c.comment, italic = true },
    OutlineLineno = { fg = c.fg_subtle },
    OutlineJumpHighlight = { bg = c.bg_selection },
    OutlineFocusCode = { bg = c.bg_panel },
    OutlineFocusOutline = { bg = c.bg_panel },
    OutlineHelp = { fg = c.fg },
    OutlineHelpTip = { fg = c.fg_muted, italic = true },
    OutlineKeymapHelpKey = { fg = c.cyan },
    OutlineKeymapHelpDisabled = { fg = c.fg_subtle },
    OutlineStatus = { fg = c.fg_muted },
    OutlineStatusError = { fg = c.red },
    OutlineStatusFt = { fg = c.lavender },
    OutlineStatusProvider = { fg = c.cyan },

    -----------------------------------------------------------
    -- yazi.nvim
    -----------------------------------------------------------
    YaziFloat = { fg = c.fg, bg = c.bg_float },
    YaziFloatBorder = { fg = c.fg_muted, bg = c.bg_float },

    -----------------------------------------------------------
    -- lspsaga.nvim
    -----------------------------------------------------------
    SagaNormal = { fg = c.fg, bg = c.bg_float },
    SagaBorder = { fg = c.fg_muted, bg = c.bg_float },
    SagaTitle = { fg = c.cyan, bold = true },
    SagaCount = { fg = c.peach },
    SagaSep = { fg = c.fg_muted },
    SagaBeacon = { bg = c.cyan },
    SagaVirtLine = { fg = c.fg_muted },
    SagaActionPreviewNormal = { fg = c.fg, bg = c.bg_float },
    SagaActionPreviewBorder = { fg = c.fg_muted, bg = c.bg_float },
    SagaActionPreviewTitle = { fg = c.cyan, bold = true },
    SagaCodeActionBorder = { fg = c.fg_muted, bg = c.bg_float },
    SagaCodeActionNormal = { fg = c.fg, bg = c.bg_float },
    SagaCodeActionTitle = { fg = c.cyan, bold = true },
    SagaCodeActionContent = { fg = c.fg },
    SagaCodeActionNumber = { fg = c.peach },
    SagaDiagnosticBorder = { fg = c.fg_muted, bg = c.bg_float },
    SagaDiagnosticSource = { fg = c.fg_muted, italic = true },
    SagaDiagnosticShowNormal = { fg = c.fg, bg = c.bg_float },
    SagaDiagnosticShowBorder = { fg = c.fg_muted, bg = c.bg_float },
    SagaDiagnosticPos = { fg = c.fg_muted },
    SagaDiagnosticWord = { fg = c.fg },
    SagaErrorText = { fg = c.red },
    SagaWarnText = { fg = c.peach },
    SagaInfoText = { fg = c.blue },
    SagaHintText = { fg = c.cyan },
    SagaErrorBorder = { fg = c.red, bg = c.bg_float },
    SagaWarnBorder = { fg = c.peach, bg = c.bg_float },
    SagaInfoBorder = { fg = c.blue, bg = c.bg_float },
    SagaHintBorder = { fg = c.cyan, bg = c.bg_float },
    SagaFinderFname = { fg = c.cyan, bold = true },
    SagaFinderCount = { fg = c.peach },
    SagaFinderIcon = { fg = c.cyan },
    SagaFinderType = { fg = c.lavender },
    SagaHoverNormal = { fg = c.fg, bg = c.bg_float },
    SagaHoverBorder = { fg = c.fg_muted, bg = c.bg_float },
    SagaIncomingNormal = { fg = c.fg, bg = c.bg_float },
    SagaOutgoingNormal = { fg = c.fg, bg = c.bg_float },
    SagaRenameBorder = { fg = c.cyan, bg = c.bg_float },
    SagaRenameNormal = { fg = c.peach, bg = c.bg_float },
    SagaRenameMatch = { bg = c.bg_selection, bold = true },
    SagaWinbarFile = { fg = c.fg, bold = true },
    SagaWinbarFolder = { fg = c.lavender },
    SagaWinbarFolderName = { fg = c.lavender },
    SagaWinbarFileName = { fg = c.fg },
    SagaWinbarSep = { fg = c.fg_muted },
    SagaWinbarModule = { fg = c.lavender },
    SagaWinbarClass = { fg = c.lavender },
    SagaWinbarMethod = { fg = c.cyan },
    SagaWinbarFunction = { fg = c.cyan },
    SagaWinbarVariable = { fg = c.mint },

    -----------------------------------------------------------
    -- headlines.nvim
    -----------------------------------------------------------
    Headline = { bg = c.bg_panel, bold = true },
    Headline1 = { fg = c.cyan, bg = c.bg_panel, bold = true },
    Headline2 = { fg = c.blue, bg = c.bg_panel, bold = true },
    Headline3 = { fg = c.lavender, bg = c.bg_panel, bold = true },
    Headline4 = { fg = c.magenta, bg = c.bg_panel, bold = true },
    Headline5 = { fg = c.pink, bg = c.bg_panel, bold = true },
    Headline6 = { fg = c.peach, bg = c.bg_panel, bold = true },
    CodeBlock = { bg = c.bg_panel },
    Dash = { fg = c.fg_muted, bold = true },
    DoubleDash = { fg = c.fg_muted, bold = true },
    Quote = { fg = c.fg_muted },

    -----------------------------------------------------------
    -- obsidian.nvim
    -----------------------------------------------------------
    ObsidianTodo = { fg = c.cyan, bold = true },
    ObsidianDone = { fg = c.mint, bold = true },
    ObsidianRightArrow = { fg = c.peach, bold = true },
    ObsidianTilde = { fg = c.pink, bold = true },
    ObsidianImportant = { fg = c.red, bold = true },
    ObsidianBullet = { fg = c.cyan, bold = true },
    ObsidianRefText = { fg = c.lavender, underline = true },
    ObsidianExtLinkIcon = { fg = c.lavender },
    ObsidianTag = { fg = c.cyan, italic = true },
    ObsidianBlockID = { fg = c.cyan, italic = true },
    ObsidianHighlightText = { fg = c.bg, bg = c.peach },

    -----------------------------------------------------------
    -- vim-illuminate
    -----------------------------------------------------------
    IlluminatedWordText = { bg = c.bg_panel },
    IlluminatedWordRead = { bg = c.bg_panel },
    IlluminatedWordWrite = { bg = c.bg_panel },

    -----------------------------------------------------------
    -- toggleterm.nvim
    -----------------------------------------------------------
    ToggleTerm = { fg = c.fg, bg = c.bg },
    ToggleTermNormal = { fg = c.fg, bg = c.bg },
    ToggleTermBorder = { fg = c.fg_muted, bg = c.bg },

    -----------------------------------------------------------
    -- copilot.lua / copilot.vim
    -----------------------------------------------------------
    CopilotSuggestion = { fg = c.fg_subtle, italic = true },
    CopilotAnnotation = { fg = c.fg_subtle, italic = true },

    -----------------------------------------------------------
    -- codecompanion.nvim
    -----------------------------------------------------------
    CodeCompanionChatHeader = { fg = c.cyan, bold = true },
    CodeCompanionChatSubtext = { fg = c.fg_muted, italic = true },
    CodeCompanionChatSeparator = { fg = c.fg_muted },
    CodeCompanionChatTokens = { fg = c.peach },
    CodeCompanionChatTool = { fg = c.lavender, bold = true },
    CodeCompanionChatToolGroup = { fg = c.cyan },
    CodeCompanionChatVariable = { fg = c.mint },
    CodeCompanionChatAgent = { fg = c.lavender, bold = true },
    CodeCompanionVirtualText = { fg = c.fg_subtle, italic = true },
    CodeCompanionVirtualTextAgents = { fg = c.lavender, italic = true },
    CodeCompanionVirtualTextTools = { fg = c.cyan, italic = true },

    -----------------------------------------------------------
    -- claudecode.nvim / claude-code.nvim
    -----------------------------------------------------------
    ClaudeCode = { fg = c.fg, bg = c.bg_float },
    ClaudeCodeNormal = { fg = c.fg, bg = c.bg_float },
    ClaudeCodeBorder = { fg = c.peach, bg = c.bg_float }, -- peach ≈ Anthropic orange
    ClaudeCodeTitle = { fg = c.peach, bold = true },
    ClaudeCodeUserMessage = { fg = c.fg },
    ClaudeCodeAssistantMessage = { fg = c.fg_dim },
    ClaudeCodeSystemMessage = { fg = c.fg_muted, italic = true },
    ClaudeCodeError = { fg = c.red },

    -----------------------------------------------------------
    -- mini.* extras (mini.files / mini.pick / mini.notify / mini.hipatterns / mini.jump2d)
    -----------------------------------------------------------
    -- mini.files
    MiniFilesBorder = { fg = c.fg_muted, bg = c.bg_float },
    MiniFilesBorderModified = { fg = c.peach, bg = c.bg_float },
    MiniFilesCursorLine = { bg = c.bg_panel, bold = true },
    MiniFilesDirectory = { fg = c.blue },
    MiniFilesFile = { fg = c.fg },
    MiniFilesNormal = { fg = c.fg, bg = c.bg_float },
    MiniFilesTitle = { fg = c.fg_muted, bg = c.bg_float },
    MiniFilesTitleFocused = { fg = c.cyan, bg = c.bg_float, bold = true },
    -- mini.pick
    MiniPickBorder = { fg = c.fg_muted, bg = c.bg_float },
    MiniPickBorderBusy = { fg = c.peach, bg = c.bg_float },
    MiniPickBorderText = { fg = c.cyan, bg = c.bg_float, bold = true },
    MiniPickIconDirectory = { fg = c.blue },
    MiniPickIconFile = { fg = c.fg },
    MiniPickHeader = { fg = c.cyan, bold = true },
    MiniPickMatchCurrent = { bg = c.bg_panel, bold = true },
    MiniPickMatchMarked = { fg = c.peach },
    MiniPickMatchRanges = { fg = c.cyan, bold = true },
    MiniPickNormal = { fg = c.fg, bg = c.bg_float },
    MiniPickPreviewLine = { bg = c.bg_panel },
    MiniPickPreviewRegion = { bg = c.bg_selection },
    MiniPickPrompt = { fg = c.cyan, bg = c.bg_float, bold = true },
    -- mini.notify
    MiniNotifyBorder = { fg = c.fg_muted, bg = c.bg_float },
    MiniNotifyNormal = { fg = c.fg, bg = c.bg_float },
    MiniNotifyTitle = { fg = c.cyan, bg = c.bg_float, bold = true },
    MiniNotifyLspProgress = { fg = c.cyan, italic = true },
    -- mini.hipatterns
    MiniHipatternsFixme = { fg = c.bg, bg = c.red, bold = true },
    MiniHipatternsHack = { fg = c.bg, bg = c.peach, bold = true },
    MiniHipatternsTodo = { fg = c.bg, bg = c.cyan, bold = true },
    MiniHipatternsNote = { fg = c.bg, bg = c.blue, bold = true },
    -- mini.jump2d
    MiniJump2dSpot = { fg = c.bg, bg = c.cyan, bold = true },
    MiniJump2dSpotAhead = { fg = c.bg, bg = c.lavender, bold = true },
    MiniJump2dSpotUnique = { fg = c.bg, bg = c.peach, bold = true },
    MiniJump2dDim = { fg = c.fg_subtle },
    -- mini.diff overlays (signs already covered above)
    MiniDiffOverAdd = { bg = c.diff.add },
    MiniDiffOverChange = { bg = c.diff.change },
    MiniDiffOverChangeBuf = { bg = c.diff.change },
    MiniDiffOverContext = { bg = c.bg_panel },
    MiniDiffOverContextBuf = { bg = c.bg_panel },
    MiniDiffOverDelete = { bg = c.diff.delete },

    -----------------------------------------------------------
    -- nvim-dap / nvim-dap-ui
    -----------------------------------------------------------
    DapBreakpoint = { fg = c.red },
    DapBreakpointCondition = { fg = c.peach },
    DapBreakpointRejected = { fg = c.fg_muted },
    DapLogPoint = { fg = c.cyan },
    DapStopped = { fg = c.mint },
    DapStoppedLine = { bg = c.diff.add },
    DapUIBreakpointsCurrentLine = { fg = c.peach, bold = true },
    DapUIBreakpointsDisabledLine = { fg = c.fg_subtle },
    DapUIBreakpointsInfo = { fg = c.mint },
    DapUIBreakpointsLine = { fg = c.peach },
    DapUIBreakpointsPath = { fg = c.cyan },
    DapUICurrentFrameName = { fg = c.lavender, bold = true },
    DapUIDecoration = { fg = c.cyan },
    DapUIEndofBuffer = { fg = c.bg },
    DapUIFloatBorder = { fg = c.fg_muted },
    DapUIFrameName = { fg = c.fg },
    DapUILineNumber = { fg = c.fg_subtle },
    DapUIModifiedValue = { fg = c.peach, bold = true },
    DapUINormal = { fg = c.fg, bg = c.bg },
    DapUIPlayPause = { fg = c.mint },
    DapUIPlayPauseNC = { fg = c.mint },
    DapUIRestart = { fg = c.mint },
    DapUIRestartNC = { fg = c.mint },
    DapUIScope = { fg = c.cyan },
    DapUISource = { fg = c.lavender },
    DapUIStepBack = { fg = c.cyan },
    DapUIStepInto = { fg = c.cyan },
    DapUIStepOut = { fg = c.cyan },
    DapUIStepOver = { fg = c.cyan },
    DapUIStop = { fg = c.red },
    DapUIStoppedThread = { fg = c.cyan },
    DapUIThread = { fg = c.mint },
    DapUIType = { fg = c.lavender },
    DapUIUnavailable = { fg = c.fg_subtle },
    DapUIValue = { fg = c.fg },
    DapUIVariable = { fg = c.fg },
    DapUIWatchesEmpty = { fg = c.red },
    DapUIWatchesError = { fg = c.red },
    DapUIWatchesValue = { fg = c.mint },
    DapUIWinSelect = { fg = c.cyan, bold = true },

    -----------------------------------------------------------
    -- diffview.nvim
    -----------------------------------------------------------
    DiffviewNormal = { fg = c.fg, bg = c.bg_panel },
    DiffviewStatusLine = { fg = c.fg, bg = c.bg_panel },
    DiffviewStatusLineNC = { fg = c.fg_muted, bg = c.bg_panel },
    DiffviewWinSeparator = { fg = c.bg_float, bg = c.bg_panel },
    DiffviewSignColumn = { bg = c.bg_panel },
    DiffviewCursorLine = { bg = c.bg_float },
    DiffviewVertSplit = { fg = c.bg_float },
    DiffviewDim1 = { fg = c.fg_muted },
    DiffviewFolderName = { fg = c.blue },
    DiffviewFolderSign = { fg = c.peach },
    DiffviewFilePanelTitle = { fg = c.cyan, bold = true },
    DiffviewFilePanelCounter = { fg = c.peach, bold = true },
    DiffviewFilePanelFileName = { fg = c.fg },
    DiffviewFilePanelPath = { fg = c.fg_muted },
    DiffviewFilePanelInsertions = { fg = c.mint },
    DiffviewFilePanelDeletions = { fg = c.pink },
    DiffviewStatusAdded = { fg = c.mint },
    DiffviewStatusModified = { fg = c.peach },
    DiffviewStatusRenamed = { fg = c.peach },
    DiffviewStatusCopied = { fg = c.peach },
    DiffviewStatusTypeChange = { fg = c.peach },
    DiffviewStatusUnmerged = { fg = c.red },
    DiffviewStatusUnknown = { fg = c.fg_muted },
    DiffviewStatusDeleted = { fg = c.pink },
    DiffviewStatusBroken = { fg = c.red },
    DiffviewStatusUntracked = { fg = c.cyan },
    DiffviewStatusIgnored = { fg = c.fg_muted },
    DiffviewReference = { fg = c.lavender },
    DiffviewHash = { fg = c.peach },
    DiffviewDate = { fg = c.fg_muted },
    DiffviewAuthor = { fg = c.lavender },

    -----------------------------------------------------------
    -- vim-fugitive
    -----------------------------------------------------------
    fugitiveHeader = { fg = c.cyan, bold = true },
    fugitiveHeading = { fg = c.cyan, bold = true },
    fugitiveHash = { fg = c.peach },
    fugitiveSymbolicRef = { fg = c.lavender },
    fugitiveStagedHeading = { fg = c.mint, bold = true },
    fugitiveUnstagedHeading = { fg = c.peach, bold = true },
    fugitiveUntrackedHeading = { fg = c.cyan, bold = true },
    fugitiveStagedModifier = { fg = c.mint },
    fugitiveUnstagedModifier = { fg = c.peach },
    fugitiveUntrackedModifier = { fg = c.cyan },

    -----------------------------------------------------------
    -- neogit
    -----------------------------------------------------------
    NeogitDiffAdd = { fg = c.mint, bg = c.diff.add },
    NeogitDiffAddHighlight = { fg = c.mint, bg = c.diff.add, bold = true },
    NeogitDiffDelete = { fg = c.pink, bg = c.diff.delete },
    NeogitDiffDeleteHighlight = { fg = c.pink, bg = c.diff.delete, bold = true },
    NeogitDiffContext = { fg = c.fg },
    NeogitDiffContextHighlight = { fg = c.fg, bg = c.bg_panel },
    NeogitDiffHeader = { fg = c.cyan, bold = true },
    NeogitDiffHeaderHighlight = { fg = c.cyan, bg = c.bg_panel, bold = true },
    NeogitHunkHeader = { fg = c.lavender, bg = c.bg_panel },
    NeogitHunkHeaderHighlight = { fg = c.lavender, bg = c.bg_panel, bold = true },
    NeogitCommitViewHeader = { fg = c.cyan, bold = true },
    NeogitFilePath = { fg = c.blue },
    NeogitNotificationInfo = { fg = c.blue },
    NeogitNotificationWarning = { fg = c.peach },
    NeogitNotificationError = { fg = c.red },
    NeogitObjectId = { fg = c.peach },
    NeogitBranch = { fg = c.lavender, bold = true },
    NeogitRemote = { fg = c.cyan },
    NeogitTagName = { fg = c.peach },
    NeogitTagDistance = { fg = c.fg_muted },
    NeogitStash = { fg = c.lavender },
    NeogitUnmergedInto = { fg = c.cyan },
    NeogitUnpulledFrom = { fg = c.cyan },
    NeogitFold = { fg = c.fg_muted },

    -----------------------------------------------------------
    -- aerial.nvim
    -----------------------------------------------------------
    AerialNormal = { fg = c.fg, bg = c.bg_panel },
    AerialNormalNC = { fg = c.fg, bg = c.bg_panel },
    AerialLine = { bg = c.bg_float, bold = true },
    AerialLineNC = { bg = c.bg_panel },
    AerialGuide = { fg = c.bg_float },
    -- aerial uses @lsp.type.* for symbol kinds, which my LSP module already covers

    -----------------------------------------------------------
    -- snacks.nvim
    -----------------------------------------------------------
    -- Generic
    SnacksNormal = { fg = c.fg, bg = c.bg_float },
    SnacksNormalNC = { fg = c.fg, bg = c.bg_float },
    SnacksWinSeparator = { fg = c.bg_float, bg = c.bg_float },
    SnacksBackdrop = { bg = c.bg },
    SnacksTitle = { fg = c.cyan, bold = true },
    SnacksFooter = { fg = c.fg_muted },
    SnacksFooterDesc = { fg = c.fg_muted },
    SnacksFooterKey = { fg = c.cyan },

    -- snacks.picker
    -- The picker creates per-window highlights via winhighlight that link
    -- NormalFloat -> SnacksPicker{Input,List,Preview}, so these set the
    -- background for each pane explicitly.
    SnacksPicker = { fg = c.fg, bg = c.bg_float },
    SnacksPickerInput = { fg = c.fg, bg = c.bg_float },
    SnacksPickerInputBorder = { fg = c.fg_muted, bg = c.bg_float },
    SnacksPickerInputTitle = { fg = c.bg, bg = c.cyan, bold = true },
    SnacksPickerInputFooter = { fg = c.fg_muted, bg = c.bg_float },
    SnacksPickerInputSearch = { fg = c.peach, bold = true },
    SnacksPickerList = { fg = c.fg, bg = c.bg_float },
    SnacksPickerListBorder = { fg = c.fg_muted, bg = c.bg_float },
    SnacksPickerListTitle = { fg = c.bg, bg = c.cyan, bold = true },
    SnacksPickerListFooter = { fg = c.fg_muted, bg = c.bg_float },
    SnacksPickerListCursorLine = { bg = c.bg_panel, bold = true },
    SnacksPickerPreview = { fg = c.fg, bg = c.bg_float },
    SnacksPickerPreviewBorder = { fg = c.fg_muted, bg = c.bg_float },
    SnacksPickerPreviewTitle = { fg = c.bg, bg = c.cyan, bold = true },
    SnacksPickerPreviewFooter = { fg = c.fg_muted, bg = c.bg_float },
    SnacksPickerPreviewCursorLine = { bg = c.bg_panel },
    -- Picker content
    SnacksPickerMatch = { fg = c.cyan, bold = true },
    SnacksPickerSelected = { fg = c.cyan, bold = true },
    SnacksPickerUnselected = { fg = c.fg_muted },
    SnacksPickerPrompt = { fg = c.cyan, bold = true },
    SnacksPickerTotals = { fg = c.fg_muted },
    SnacksPickerDir = { fg = c.comment },
    SnacksPickerFile = { fg = c.fg },
    SnacksPickerDirectory = { fg = c.blue },
    SnacksPickerPathHidden = { fg = c.fg_muted },
    SnacksPickerPathIgnored = { fg = c.fg_muted },
    SnacksPickerComment = { fg = c.comment, italic = true },
    SnacksPickerDesc = { fg = c.comment },
    SnacksPickerLabel = { fg = c.lavender },
    SnacksPickerSpecial = { fg = c.lavender },
    SnacksPickerDimmed = { fg = c.fg_muted },
    SnacksPickerDelim = { fg = c.fg_muted },
    SnacksPickerRow = { fg = c.peach },
    SnacksPickerCol = { fg = c.fg_subtle },
    SnacksPickerIdx = { fg = c.peach },
    SnacksPickerBold = { bold = true },
    SnacksPickerItalic = { italic = true },
    SnacksPickerSpinner = { fg = c.cyan },
    SnacksPickerToggle = { fg = c.cyan, bg = c.bg_panel },
    SnacksPickerTree = { fg = c.fg_subtle },
    SnacksPickerRule = { fg = c.fg_muted },
    SnacksPickerCode = { fg = c.peach },
    SnacksPickerLink = { fg = c.blue, underline = true },
    SnacksPickerLinkBroken = { fg = c.red },
    -- Picker git
    SnacksPickerGitBranch = { fg = c.cyan },
    SnacksPickerGitBranchCurrent = { fg = c.cyan, bold = true },
    SnacksPickerGitCommit = { fg = c.peach },
    SnacksPickerGitDate = { fg = c.fg_muted },
    SnacksPickerGitAuthor = { fg = c.lavender },
    SnacksPickerGitStatus = { fg = c.peach },
    SnacksPickerGitStatusAdded = { fg = c.mint },
    SnacksPickerGitStatusModified = { fg = c.peach },
    SnacksPickerGitStatusDeleted = { fg = c.pink },
    SnacksPickerGitStatusRenamed = { fg = c.peach },
    SnacksPickerGitStatusUntracked = { fg = c.fg_muted },
    SnacksPickerGitStatusIgnored = { fg = c.fg_muted },
    SnacksPickerGitStatusUnmerged = { fg = c.red },
    SnacksPickerGitStatusStaged = { fg = c.mint },

    -- snacks.notifier (replaces nvim-notify)
    SnacksNotifierError = { fg = c.red, bg = c.bg_float },
    SnacksNotifierWarn = { fg = c.peach, bg = c.bg_float },
    SnacksNotifierInfo = { fg = c.blue, bg = c.bg_float },
    SnacksNotifierDebug = { fg = c.fg_muted, bg = c.bg_float },
    SnacksNotifierTrace = { fg = c.lavender, bg = c.bg_float },
    SnacksNotifierIconError = { fg = c.red, bg = c.bg_float },
    SnacksNotifierIconWarn = { fg = c.peach, bg = c.bg_float },
    SnacksNotifierIconInfo = { fg = c.blue, bg = c.bg_float },
    SnacksNotifierIconDebug = { fg = c.fg_muted, bg = c.bg_float },
    SnacksNotifierIconTrace = { fg = c.lavender, bg = c.bg_float },
    SnacksNotifierTitleError = { fg = c.red, bg = c.bg_float, bold = true },
    SnacksNotifierTitleWarn = { fg = c.peach, bg = c.bg_float, bold = true },
    SnacksNotifierTitleInfo = { fg = c.blue, bg = c.bg_float, bold = true },
    SnacksNotifierTitleDebug = { fg = c.fg_muted, bg = c.bg_float, bold = true },
    SnacksNotifierTitleTrace = { fg = c.lavender, bg = c.bg_float, bold = true },
    SnacksNotifierBorderError = { fg = c.red, bg = c.bg_float },
    SnacksNotifierBorderWarn = { fg = c.peach, bg = c.bg_float },
    SnacksNotifierBorderInfo = { fg = c.blue, bg = c.bg_float },
    SnacksNotifierBorderDebug = { fg = c.fg_muted, bg = c.bg_float },
    SnacksNotifierBorderTrace = { fg = c.lavender, bg = c.bg_float },
    SnacksNotifierFooterError = { fg = c.fg_muted, bg = c.bg_float },
    SnacksNotifierFooterWarn = { fg = c.fg_muted, bg = c.bg_float },
    SnacksNotifierFooterInfo = { fg = c.fg_muted, bg = c.bg_float },
    SnacksNotifierFooterDebug = { fg = c.fg_muted, bg = c.bg_float },
    SnacksNotifierFooterTrace = { fg = c.fg_muted, bg = c.bg_float },
    SnacksNotifierHistory = { fg = c.fg, bg = c.bg_float },
    SnacksNotifierHistoryTitle = { fg = c.cyan, bg = c.bg_float, bold = true },
    SnacksNotifierMinimal = { fg = c.fg, bg = c.bg_float },

    -- snacks.input
    SnacksInput = { fg = c.fg, bg = c.bg_float },
    SnacksInputNormal = { fg = c.fg, bg = c.bg_float },
    SnacksInputBorder = { fg = c.cyan, bg = c.bg_float },
    SnacksInputTitle = { fg = c.bg, bg = c.cyan, bold = true },
    SnacksInputIcon = { fg = c.cyan },

    -- snacks.indent
    SnacksIndent = { fg = c.bg_float },
    SnacksIndentScope = { fg = c.fg_muted },
    SnacksIndentChunk = { fg = c.fg_muted },
    SnacksIndentUnderline = { sp = c.fg_muted, underline = true },

    -- snacks.dim
    SnacksDim = { fg = c.fg_subtle },

    -- snacks.scratch
    SnacksScratch = { fg = c.fg, bg = c.bg_float },
    SnacksScratchTitle = { fg = c.cyan, bg = c.bg_float, bold = true },
    SnacksScratchKey = { fg = c.peach },
    SnacksScratchDesc = { fg = c.fg_muted },

    -- snacks.zen
    SnacksZen = { fg = c.fg, bg = c.bg },
    SnacksZenIcon = { fg = c.cyan },

    -- snacks.dashboard
    SnacksDashboardNormal = { fg = c.fg, bg = c.bg },
    SnacksDashboardIcon = { fg = c.cyan },
    SnacksDashboardKey = { fg = c.peach },
    SnacksDashboardDesc = { fg = c.fg },
    SnacksDashboardTitle = { fg = c.cyan, bold = true },
    SnacksDashboardHeader = { fg = c.cyan, bold = true },
    SnacksDashboardFooter = { fg = c.fg_muted, italic = true },
    SnacksDashboardSpecial = { fg = c.lavender },
    SnacksDashboardDir = { fg = c.blue },
    SnacksDashboardFile = { fg = c.fg },
    SnacksDashboardTerminal = { fg = c.fg },

    -- snacks.statuscolumn
    SnacksStatusColumn = { fg = c.fg_muted, bg = c.bg },
    SnacksStatusColumnMark = { fg = c.cyan },

    -- snacks.win (winbar / floating windows)
    SnacksWinBar = { fg = c.fg, bg = c.bg },
    SnacksWinBarNC = { fg = c.fg_muted, bg = c.bg },
    SnacksWinKey = { fg = c.cyan, bold = true },
    SnacksWinKeyDesc = { fg = c.fg },
    SnacksWinKeySep = { fg = c.fg_muted },

    -- snacks.diff
    SnacksDiffAdd = { bg = c.diff.add },
    SnacksDiffDelete = { bg = c.diff.delete },
    SnacksDiffContext = { fg = c.fg_muted },
    SnacksDiffHeader = { fg = c.cyan, bold = true },
    SnacksDiffLabel = { fg = c.lavender },
    SnacksDiffConflict = { fg = c.peach },

    -----------------------------------------------------------
    -- render-markdown.nvim
    -- Headings follow the same cool→warm walk as treesitter `@markup.heading.N`.
    -- Background variants use a subtle tint of the same hue.
    -----------------------------------------------------------
    RenderMarkdownH1 = { fg = c.cyan, bold = true },
    RenderMarkdownH2 = { fg = c.blue, bold = true },
    RenderMarkdownH3 = { fg = c.lavender, bold = true },
    RenderMarkdownH4 = { fg = c.magenta, bold = true },
    RenderMarkdownH5 = { fg = c.pink, bold = true },
    RenderMarkdownH6 = { fg = c.peach, bold = true },
    RenderMarkdownH1Bg = { bg = c.bg_panel },
    RenderMarkdownH2Bg = { bg = c.bg_panel },
    RenderMarkdownH3Bg = { bg = c.bg_panel },
    RenderMarkdownH4Bg = { bg = c.bg_panel },
    RenderMarkdownH5Bg = { bg = c.bg_panel },
    RenderMarkdownH6Bg = { bg = c.bg_panel },
    RenderMarkdownCode = { bg = c.bg_panel },
    RenderMarkdownCodeInline = { fg = c.peach, bg = c.bg_panel },
    RenderMarkdownBullet = { fg = c.cyan },
    RenderMarkdownDash = { fg = c.fg_muted },
    RenderMarkdownQuote = { fg = c.comment, italic = true },
    RenderMarkdownTableHead = { fg = c.cyan, bold = true },
    RenderMarkdownTableRow = { fg = c.fg },
    RenderMarkdownTableFill = { fg = c.fg_muted },
    RenderMarkdownLink = { fg = c.blue, underline = true },
    RenderMarkdownWikiLink = { fg = c.blue, underline = true },
    RenderMarkdownChecked = { fg = c.mint },
    RenderMarkdownUnchecked = { fg = c.fg_muted },
    RenderMarkdownTodo = { fg = c.cyan, bold = true },
    RenderMarkdownSign = { fg = c.fg_muted },
    RenderMarkdownMath = { fg = c.cyan },
    RenderMarkdownSuccess = { fg = c.mint },
    RenderMarkdownInfo = { fg = c.blue },
    RenderMarkdownHint = { fg = c.cyan },
    RenderMarkdownWarn = { fg = c.peach },
    RenderMarkdownError = { fg = c.red },

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
