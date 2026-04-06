-- houston.nvim
-- A Neovim port of the Houston VSCode theme by Astro.

local M = {}

local config = require "houston.config"

---Configure houston.nvim. Optional — `:colorscheme houston` works without it.
---@param opts HoustonConfig?
function M.setup(opts)
  config.setup(opts)
end

---Load the colorscheme. Called by `colors/houston.lua`.
function M.load()
  if vim.g.colors_name then
    vim.cmd "hi clear"
  end
  if vim.fn.exists "syntax_on" then
    vim.cmd "syntax reset"
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "houston"

  local palette = require "houston.palette"
  local opts = config.options

  -- Allow palette overrides
  opts.on_colors(palette)

  -- Build highlight groups from each module
  local groups = {}
  local modules = {
    "houston.groups.editor",
    "houston.groups.syntax",
    "houston.groups.treesitter",
    "houston.groups.lsp",
    "houston.groups.plugins",
  }
  for _, mod in ipairs(modules) do
    for name, hl in pairs(require(mod).get(palette, opts)) do
      groups[name] = hl
    end
  end

  -- Apply transparency
  if opts.transparent then
    local clear = {
      "Normal",
      "NormalNC",
      "NormalFloat",
      "SignColumn",
      "EndOfBuffer",
      "LineNr",
      "CursorLineNr",
      "FoldColumn",
      "StatusLine",
      "StatusLineNC",
      "TabLine",
      "TabLineFill",
    }
    for _, name in ipairs(clear) do
      if groups[name] then
        groups[name].bg = "NONE"
      end
    end
  end

  -- Allow highlight overrides
  opts.on_highlights(groups, palette)

  -- Apply
  for name, hl in pairs(groups) do
    vim.api.nvim_set_hl(0, name, hl)
  end

  if opts.terminal_colors then
    M._set_terminal_colors(palette)
  end
end

function M._set_terminal_colors(palette)
  local t = palette.term
  local map = {
    [0] = t.black,
    [1] = t.red,
    [2] = t.green,
    [3] = t.yellow,
    [4] = t.blue,
    [5] = t.magenta,
    [6] = t.cyan,
    [7] = t.white,
    [8] = t.bright_black,
    [9] = t.bright_red,
    [10] = t.bright_green,
    [11] = t.bright_yellow,
    [12] = t.bright_blue,
    [13] = t.bright_magenta,
    [14] = t.bright_cyan,
    [15] = t.bright_white,
  }
  for i, color in pairs(map) do
    vim.g["terminal_color_" .. i] = color
  end
end

return M
