
<img width="1905" height="932" alt="image" src="https://github.com/user-attachments/assets/45236f6d-eb06-411b-b7f5-a70722597b07" />

# rnvim
A personalized Neovim configuration built with `lazy.nvim` and `mason.nvim`, focused on web development with React and NestJS, with Open Code as the AI assistant.

## Features

- **Plugin Management**: Powered by [lazy.nvim](https://github.com/folke/lazy.nvim)
- **LSP Support**: Pre-configured for TypeScript and ESLint using [Mason](https://github.com/williamboman/mason.nvim) and [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig).
- **Fuzzy Finding**: Efficient searching with [Telescope](https://github.com/nvim-telescope/telescope.nvim).
- **File Explorer**: [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) for visual file navigation.
- **Auto-formatting**: Powered by [conform.nvim](https://github.com/stevearc/conform.nvim) (Format on save).
- **Completion**: [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) for intelligent code completion.
- **AI Integration**: [opencode.nvim](https://github.com/NickvanDyke/opencode.nvim) for AI-powered coding assistance.
- **UI Enhancements**:
  - [Bufferline](https://github.com/akinsho/bufferline.nvim) for better tab management.
  - [Fidget.nvim](https://github.com/j-hui/fidget.nvim) for LSP status updates.
  - [Github Theme](https://github.com/projekt0n/github-nvim-theme) (High Contrast Dark).

## Keymaps

The leader key is set to `Space`.

### Core & Navigation
| Keymap | Description |
|--------|-------------|
| `gl` | Show line diagnostics (errors, warnings) |
| `<leader>e` | Toggle Neo-tree (File Explorer) |

### LSP (only active when LSP is attached)
| Keymap | Description |
|--------|-------------|
| `gd` | Go to definition |
| `gr` | Show references |
| `K` | Show documentation (hover) |

### Telescope (Fuzzy Finder)

| Keymap | Description |
|--------|-------------|
| `<leader>ff` | Find Files |
| `<leader>fg` | Find Text (Live Grep) |
| `<leader>fb` | List Open Buffers |
| `<leader>fh` | Search Help Tags |

### AI Integration (Opencode)

C = Ctrl or Command, depending on your system.

| Keymap | Description |
|--------|-------------|
| `<C-a>` | Ask Opencode |
| `<C-x>` | Execute Opencode Action |
| `<leader>.` | Toggle Opencode |
| `go` | Add range to Opencode (Operator) |
| `goo` | Add current line to Opencode |
| `<S-C-u>` | Scroll Opencode UI Up |
| `<S-C-d>` | Scroll Opencode UI Down |

### Autocompletion (Insert Mode)

| Keymap | Description |
|--------|-------------|
| `<C-Space>` | Trigger completion |
| `<CR>` | Confirm selection |
| `<C-b>` | Scroll documentation up |
| `<C-f>` | Scroll documentation down |

## Requirements

- Neovim >= 0.9.0
- [Nerd Fonts](https://www.nerdfonts.com/) (icons)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for Telescope grep)
- `npm` (for formatting tools like `prettier` and `eslint_d`)

## Installation

1. Clone this repository to your Neovim configuration directory:
   ```bash
   git clone <repo-url> ~/.config/nvim
   ```
2. Open Neovim:
   ```bash
   nvim .
   ```
3. `lazy.nvim` will automatically download and install the configured plugins.
4. Mason will handle the installation of language servers.

## Project Structure

```text
.
├── init.lua             # Entry point 
└── lua/
    ├── core/
    │   ├── keymaps.lua  
    │   └── options.lua  
    └── plugins/         # Plugin-specific configurations
        ├── lsp.lua      
        ├── telescope.lua
        └── ...
```

### Adding New Plugins

This configuration automatically imports plugin specifications from the `lua/plugins/` directory.

To add a new plugin, create a new `.lua` file in that directory (e.g., `lua/plugins/new-plugin.lua`). The file must return a table that follows the `lazy.nvim` plugin specification.

For example, to add a fictional plugin `author/plugin.nvim`:

```lua
return {
  "author/plugin.nvim",
  version = "*",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
  end,
}
```
After adding the file, you must restart Neovim. `lazy.nvim` will then automatically detect and install the new plugin.
