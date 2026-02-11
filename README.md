# Jack's Neovim Configuration

A modern, well-documented Neovim setup focused on intuitive defaults and discoverability.

## Quick Setup (New Machine)

```bash
# 1. Clone the repo
git clone https://github.com/YOUR_USERNAME/.nvim.git ~/.config/.nvim

# 2. Backup existing config (if any)
mv ~/.config/nvim ~/.config/nvim.backup 2>/dev/null || true

# 3. Create symlink
ln -s ~/.config/.nvim ~/.config/nvim

# 4. Install pre-commit hooks
cd ~/.config/.nvim
pre-commit install

# 5. Launch Neovim (plugins will auto-install)
nvim
```

## Dependencies

### Required
- **Neovim >= 0.10** - `brew install neovim`
- **Git** - Usually pre-installed on macOS
- **[Nerd Font](https://www.nerdfonts.com/)** - For icons (recommended: MesloLGM Nerd Font)
- **ripgrep** - For telescope grep and Spectre: `brew install ripgrep`
- **make** - For telescope-fzf-native (Xcode Command Line Tools)

### Optional
- **lazygit** - For git UI: `brew install lazygit`
- **pre-commit** - For git hooks: `brew install pre-commit`
- **detect-secrets** - For secret scanning: `pip install detect-secrets`

### Language Servers (Auto-installed via Mason)
LSP servers install automatically when you open files. Common ones:
- TypeScript/JavaScript: `tsserver`
- Python: `pyright`
- Lua: `lua_ls`
- Go: `gopls`
- Rust: `rust_analyzer`

Run `:Mason` to manage language servers manually.

## Features

- **🔍 Telescope** - Fuzzy find files, text, and everything else
- **📁 Neo-tree** - File explorer with git integration
- **📑 Bufferline** - Visual buffer tabs at the top
- **🎯 Harpoon** - Lightning-fast navigation between key files
- **🧠 LSP** - Full IDE features with inlay hints, call hierarchy, and workspace symbols
- **✨ Blink.cmp** - Fast, modern completion
- **🎨 Conform** - Auto-format on save (prettier, black, etc.)
- **🌳 Treesitter** - Advanced syntax highlighting and code understanding
- **🔀 Gitsigns** - Git integration in the gutter
- **⚡ Mini.nvim** - Statusline, surround, and more
- **🔧 Autopairs** - Auto-close brackets and quotes
- **📏 Sleuth** - Auto-detect indentation
- **❓ Which-key** - Discover keybindings as you type
- **🤖 Kiro** - AI assistant integrated via ACP
- **🤖 Copilot** - GitHub Copilot inline code suggestions
- **🎨 Catppuccin** - Beautiful, easy-on-the-eyes theme
- **🔧 Trouble** - Enhanced diagnostics and quickfix UI
- **🐙 Lazygit** - Full-featured git UI via Toggleterm
- **🔍 Spectre** - Project-wide search and replace with preview
- **🐛 DAP** - Step-through debugging with breakpoints
- **⚡ Flash** - Labeled jumps for instant navigation
- **🌲 Undotree** - Visualize and navigate undo history
- **💪 Hardtime** - Learn better Vim motions through hints
- **🗄️ Dadbod** - Database UI for browsing and querying

## Quick Start

See [QUICKSTART.md](./QUICKSTART.md) for detailed setup and learning guide.

### Installation

```bash
# Backup existing config
mv ~/.config/nvim ~/.config/nvim.backup

# Clone and symlink
git clone https://github.com/YOUR_USERNAME/.nvim.git ~/.config/.nvim
ln -s ~/.config/.nvim ~/.config/nvim

# Launch Neovim (plugins will auto-install)
nvim
```

## Structure

```
nvim-config-2026/
├── init.lua              # Entry point
├── lua/
│   ├── config/
│   │   ├── settings.lua  # Core Neovim settings
│   │   └── lazy.lua      # Plugin manager setup
│   └── plugins/          # Plugin configurations
│       ├── theme.lua
│       ├── telescope.lua
│       ├── neotree.lua
│       ├── harpoon.lua
│       ├── treesitter.lua
│       ├── lsp.lua
│       ├── blink.lua
│       ├── gitsigns.lua
│       ├── whichkey.lua
│       ├── kiro.lua
│       ├── trouble.lua
│       ├── toggleterm.lua
│       ├── spectre.lua
│       ├── dap.lua
│       └── extras.lua
├── QUICKSTART.md         # Learning guide
└── README.md             # This file
```

## Key Bindings

Leader key: `Space`

### Most Important

- `<leader>ff` - Find files
- `<leader><leader>` - Find open buffers
- `<leader>sg` - Search text (grep)
- `<leader>e` - Toggle file explorer
- `]b` / `[b` - Next/previous buffer
- `<leader>bd` - Close current buffer
- `<leader>a` - Add file to harpoon
- `<leader>h` - Toggle harpoon menu
- `<Esc>` - Clear search highlights
- `Ctrl+\` - Toggle Kiro AI chat
- `Alt+\` - Toggle Claude AI chat
- `Tab` - Accept Copilot suggestion (in insert mode)
- `s` + char - Flash jump (labeled navigation)
- `<leader>u` - Toggle undotree
- `<leader>D` - Toggle database UI

### LSP & Code Navigation

- `gd` - Go to definition
- `gr` - Go to references
- `K` - Hover documentation
- `<leader>cr` - Rename symbol
- `<leader>ca` - Code action
- `<leader>ci` - Incoming calls
- `<leader>co` - Outgoing calls
- `<leader>ss` - Search document symbols
- `<leader>sS` - Search workspace symbols

### Quickfix & Diagnostics

- `]q` / `[q` - Next/previous quickfix item
- `<leader>qo` - Open quickfix list
- `<leader>qc` - Close quickfix list
- `<leader>xx` - Toggle diagnostics (Trouble)
- `<leader>xd` - Buffer diagnostics (Trouble)
- `<leader>xq` - Quickfix in Trouble UI

### Git & Terminal

- `<leader>gg` - Open Lazygit
- `<leader>tt` - Toggle floating terminal

### Search & Replace

- `<leader>sr` - Search and replace (Spectre)
- `<leader>sw` - Search current word (Spectre)
- `<leader>sp` - Search in current file (Spectre)

### Debugging

- `<leader>db` - Toggle breakpoint
- `<leader>dc` - Continue/Start debugging
- `<leader>ds` - Step over
- `<leader>di` - Step into
- `<leader>do` - Step out
- `<leader>du` - Toggle debug UI
- `<leader>dt` - Terminate debugging

See [QUICKSTART.md](./QUICKSTART.md) for complete keybinding reference.

## Customization

All configuration is in plain Lua files with extensive comments. To customize:

1. Edit files in `lua/config/` for core settings
2. Edit files in `lua/plugins/` for plugin-specific config
3. Restart Neovim

## Philosophy

This config prioritizes:

1. **Intuitive defaults** - Works great out of the box
2. **Discoverability** - Which-key helps you learn
3. **Documentation** - Every file is well-commented
4. **Simplicity** - Easy to understand and modify
5. **Modern tools** - Uses current best practices

## Requirements

- Neovim >= 0.10
- Git
- A [Nerd Font](https://www.nerdfonts.com/) (for icons)
- `ripgrep` (for telescope grep and Spectre)
- `make` (for telescope-fzf-native)
- `lazygit` (optional, for git UI - `brew install lazygit`)

## Troubleshooting

Run `:checkhealth` to diagnose issues.

Common commands:
- `:Lazy` - Plugin manager
- `:Mason` - LSP installer
- `:LspInfo` - LSP status
- `:Telescope keymaps` - Search all keybindings

## License

MIT - Feel free to use and modify!
