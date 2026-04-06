# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

From v0.2.0 onward, this file is generated automatically by
[release-please](https://github.com/googleapis/release-please) from
[Conventional Commits](https://www.conventionalcommits.org/).

## [0.1.1](https://github.com/devbydaniel/houston.nvim/compare/v0.1.0...v0.1.1) (2026-04-06)


### Documentation

* add screenshots and finish README ([e71db62](https://github.com/devbydaniel/houston.nvim/commit/e71db6235f03ba4fa239edbbaec2982f59d2ea0c))

## [0.1.0] - 2026-04-06

Initial release.

### Added

- Pure-Lua port of the [Houston VSCode theme](https://github.com/withastro/houston-vscode)
  by Astro, with **1138 highlight groups** covering treesitter, LSP semantic
  tokens, and a wide range of plugins.
- TextMate scope mappings translated faithfully from the original
  `houston.json`. Strings → peach, variables → mint, properties → mint,
  keywords → blue, functions → cyan, types/classes → lavender, HTML tags →
  blue, HTML attributes → lavender.
- LSP semantic token modifiers, including the `readonly` modifier so JS/TS
  `const` references render in lavender to match the VSCode visual.
- Markdown headings walk the Houston color wheel cool → warm
  (`H1` cyan → `H2` blue → `H3` lavender → `H4` magenta → `H5` pink →
  `H6` peach), applied to both `@markup.heading.N` and
  `RenderMarkdownH1..H6`.
- Bundled lualine theme at `lua/lualine/themes/houston.lua`.
- Configuration options: `transparent`, `italic_comments`, `terminal_colors`,
  `styles`, `on_colors`, `on_highlights`.
- Plugin highlight support for:
  - **Editor & navigation:** snacks.nvim (picker, notifier, input, indent,
    dim, scratch, zen, dashboard, statuscolumn, winbar, diff), telescope,
    nvim-tree, neo-tree, bufferline, which-key, indent-blankline, leap,
    flash, mason, outline, yazi, aerial, mini.files, mini.pick, mini.notify,
    mini.hipatterns, mini.jump2d, mini.statusline, mini.diff
  - **Completion:** nvim-cmp, blink.cmp
  - **LSP & diagnostics:** lspsaga, trouble, todo-comments, vim-illuminate
  - **Git:** gitsigns, diffview, fugitive, neogit
  - **Markdown:** render-markdown, headlines, obsidian
  - **AI:** copilot, codecompanion, claudecode
  - **Debug:** nvim-dap, nvim-dap-ui
  - **Misc:** noice, nvim-notify, toggleterm, lazy.nvim
- stylua + selene CI on every push and pull request.

[0.1.0]: https://github.com/devbydaniel/houston.nvim/releases/tag/v0.1.0
