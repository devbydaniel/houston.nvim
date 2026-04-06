local M = {}

---@class HoustonConfig
---@field transparent boolean Disable background colors for Normal, SignColumn, etc.
---@field italic_comments boolean Render comments in italics
---@field terminal_colors boolean Populate vim.g.terminal_color_*
---@field styles table<string, vim.api.keyset.highlight> Per-group style overrides
---@field on_colors fun(colors: table) Modify the palette before highlights are built
---@field on_highlights fun(highlights: table, colors: table) Modify highlights before applying

M.defaults = {
  transparent = false,
  italic_comments = true,
  terminal_colors = true,
  styles = {
    keywords = {},
    functions = {},
    variables = {},
    booleans = {},
    types = {},
  },
  on_colors = function(_colors) end,
  on_highlights = function(_highlights, _colors) end,
}

M.options = vim.deepcopy(M.defaults)

---@param opts HoustonConfig?
function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", M.defaults, opts or {})
end

return M
