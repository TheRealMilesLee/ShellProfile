# Zsh Configuration Guide

This repository contains a custom zsh configuration file, optimized for Oh My Zsh, custom path variables, and a streamlined setup for productivity.

## Table of Contents
1. [Prerequisites](#prerequisites)
2. [Installation](#installation)
3. [Setting Up Neovim with LazyVim](#setting-up-neovim-with-lazyvim)
4. [Applying the Nord Theme](#applying-the-nord-theme)
5. [Zsh Plugins and Dependencies](#zsh-plugins-and-dependencies)

## Prerequisites
- **Zsh**: Ensure you have zsh installed on your system. Verify with:
  ```bash
  zsh --version
  ```
- **Oh My Zsh**: Required for managing themes and plugins.
- **Homebrew** (macOS/Linux): Used for installing dependencies.

## Installation

### 1. Clone this Repository
Clone or download the `.zshrc` file to your home directory:
```bash
git clone <repository-url> ~/.zsh
cd ~/.zsh
```

### 2. Install Oh My Zsh
Install Oh My Zsh by running:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 3. Update the .zshrc File
Copy the provided `.zshrc` file to your home directory:
```bash
cp .zshrc ~/.zshrc
```
Then, reload the configuration:
```bash
source ~/.zshrc
```

## Setting Up Neovim with LazyVim

1. **Install Neovim**:
   ```bash
   brew install neovim
   ```

2. **Install LazyVim**:
   ```bash
   git clone https://github.com/LazyVim/starter ~/.config/nvim
   ```
   Launch Neovim to complete the LazyVim setup:
   ```bash
   nvim
   ```

3. **Configure Plugins**:
   Modify `~/.config/nvim/init.lua` or `~/.config/nvim/lua/user/plugins.lua` as needed.

## Applying the Nord Theme

1. **Install Nord Vim Theme**:
   Add the following to your Neovim config:
   ```lua
   use 'arcticicestudio/nord-vim'
   vim.cmd('colorscheme nord')
   ```

2. **Apply Nord to Terminal**:
   - **iTerm2** (macOS): Go to `Preferences > Profiles > Colors` and import the Nord theme.
   - **GNOME Terminal**: Use [Nord GNOME Terminal](https://github.com/arcticicestudio/nord-gnome-terminal).

## Zsh Plugins and Dependencies

The `.zshrc` includes various plugins to enhance functionality. Install them as follows:

1. **Spaceship Prompt**:
   ```bash
   brew install spaceship
   ```
   Add to `.zshrc`:
   ```bash
   source /usr/local/opt/spaceship/spaceship.zsh
   ```

2. **Syntax Highlighting**:
   ```bash
   brew install zsh-syntax-highlighting
   ```
   Add to `.zshrc`:
   ```bash
   source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
   ```

3. **Autosuggestions**:
   ```bash
   brew install zsh-autosuggestions
   ```
   Add to `.zshrc`:
   ```bash
   source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
   ```

4. **Additional Plugins**:
   - **git**: Provides Git commands.
   - **command-not-found**: Alerts when a command is missing.
   - **safe-paste**: Prevents accidental pastes.
   - **colored-man-pages**: Colors man pages.
   - **sudo**: Suggests using sudo when a command fails.
   - **vscode**: Shortcuts for VS Code.
   - **auto-notify**: Notifies when long-running jobs are done.
   - **git-auto-fetch**: Auto-fetches Git updates.
   - **macos**: macOS-specific commands.

Enable these plugins by adding them in the plugins section of `.zshrc`:
```zsh
plugins=(git command-not-found safe-paste colored-man-pages sudo vscode auto-notify git-auto-fetch macos)
```

5. **Other Paths**:
   - **Python Path**: Adjust for your Python installation if needed.
   - **Make Flags**: Enables parallel jobs, set as needed:
     ```zsh
     export MAKEFLAGS="-j8"
     ```
