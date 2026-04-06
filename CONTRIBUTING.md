# Contributing

Thanks for considering a contribution!

## Quick start

```bash
git clone https://github.com/devbydaniel/houston.nvim
cd houston.nvim

# Format and lint (required to pass CI)
stylua .
selene .
```

Install the tools via Homebrew or your package manager:

```bash
brew install stylua selene
```

## Project layout

```
houston.nvim/
├── colors/houston.lua            # entry point
├── lua/
│   ├── houston/
│   │   ├── init.lua              # load() / setup()
│   │   ├── config.lua            # defaults
│   │   ├── palette.lua           # raw hex values
│   │   └── groups/
│   │       ├── editor.lua         # core editor groups
│   │       ├── syntax.lua         # legacy vim groups
│   │       ├── treesitter.lua     # @ capture groups
│   │       ├── lsp.lua            # diagnostics + semantic tokens
│   │       └── plugins.lua        # plugin highlights
│   └── lualine/themes/houston.lua
└── extras/houston-vscode.json    # source theme for reference
```

When tweaking colors, the source of truth is `extras/houston-vscode.json`.
Cross-reference any change against the original VSCode theme so the port
stays faithful.

## Testing locally

Point your local nvim config at the working directory instead of the GitHub
URL:

```lua
{
  "devbydaniel/houston.nvim",
  dir = "~/path/to/your/clone",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("houston")
  end,
}
```

Then `:Lazy reload houston.nvim` after each edit. No commit/push needed for
iteration.

## Smoke test

```bash
nvim --headless --clean -u NONE \
  --cmd "set rtp+=$PWD" \
  --cmd "colorscheme houston" \
  --cmd "qa!"
```

Should print nothing and exit cleanly.

## Commit messages

This project uses [Conventional Commits](https://www.conventionalcommits.org/)
so [release-please](https://github.com/googleapis/release-please) can
generate the changelog and version bumps automatically.

| Prefix      | When to use                            | Version bump |
| ----------- | -------------------------------------- | ------------ |
| `feat:`     | new plugin, new highlight group        | minor        |
| `fix:`      | wrong color, broken highlight          | patch        |
| `docs:`     | README, CHANGELOG, comments            | none         |
| `refactor:` | restructuring without behavior change  | none         |
| `perf:`     | startup time, fewer highlight groups   | patch        |
| `chore:`    | dependency bumps, file moves           | none         |
| `ci:`       | workflows, lint configs                | none         |
| `style:`    | stylua reformatting                    | none         |
| `test:`     | smoke tests                            | none         |

A `BREAKING CHANGE:` footer (or `feat!:` / `fix!:`) bumps the major
version.

Examples:

```
feat: add neorg highlight support
fix: tag delimiters were too dim in HTML
docs: add screenshot of the picker
refactor: extract palette overrides into a helper
```

## Pull requests

1. Fork and create a topic branch from `main`.
2. Make the change. Run `stylua .` and `selene .`.
3. Open the PR. CI will run lint on push.
4. Include a screenshot if the change is visual.
