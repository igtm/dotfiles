# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Structure

This repository contains a Neovim configuration based on [LazyVim](https://github.com/LazyVim/LazyVim), a Neovim starter template that provides a feature-rich foundation.

Key directories and files:
- `/nvim/init.lua`: Entry point that bootstraps LazyVim
- `/nvim/lua/config/`: Core configuration files
  - `lazy.lua`: Configures the lazy.nvim plugin manager and LazyVim
  - `keymaps.lua`: Custom key mappings 
  - `options.lua`: Custom Neovim options
  - `autocmds.lua`: Custom autocommands
- `/nvim/lua/plugins/`: Plugin-specific configurations

## Code Architecture

The codebase follows LazyVim's architecture pattern:

1. **Initialization Flow**:
   - `init.lua` bootstraps lazy.nvim plugin manager
   - `lazy.lua` loads LazyVim and plugins
   - Configuration files (keymaps, options, autocmds) are loaded automatically on the "VeryLazy" event

2. **Plugin Management**:
   - Uses [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management
   - LazyVim's core plugins are imported via `{ "LazyVim/LazyVim", import = "lazyvim.plugins" }`
   - Extra plugins are enabled via the `lazyvim.json` file
   - Custom plugin configurations are defined in individual files in the `lua/plugins/` directory

3. **Configuration Approach**:
   - Default settings come from LazyVim (referenced in comments at the top of config files)
   - Custom settings are added in the corresponding config files
   - Plugin configuration follows lazy.nvim's spec format with a return table containing plugin name and options

## Development Commands

### Linting and Formatting

For Lua files:
- Linting/formatting is done with [stylua](https://github.com/JohnnyMorganz/StyLua)
- Configuration is in `stylua.toml` with the following settings:
  - Uses spaces for indentation (2 spaces)
  - 120 character line length

To format Lua files:
```bash
stylua .
```

### Plugin Management

To manage plugins:
```bash
# Open Neovim
nvim

# Open lazy.nvim UI
:Lazy

# Update all plugins
:Lazy update

# Check plugin status
:Lazy check

# Clean unused plugins
:Lazy clean
```

### Common LazyVim Commands

```bash
# Open file browser
:Telescope find_files
:Telescope file_browser

# Search in files
:Telescope live_grep

# Open diagnostics
:Telescope diagnostics
```

## Custom Key Mappings

Important custom keymaps defined in `keymaps.lua`:

- `jj` - Escape from insert mode
- `<C-a>` - Select all text
- `a` - Go to start of line
- `;` - Go to end of line
- `sd`, `ss`, `sv` - Window split commands
- `sh`, `sl`, `sj`, `sk` - Window navigation
- `gl`, `gh` - Buffer navigation
- `f`, `F` - Flash.nvim jump and treesitter navigation