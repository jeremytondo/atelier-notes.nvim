# Technology Stack - Atelier-Notes.nvim

## Core Technologies
- **Language:** Lua
- **Platform:** Neovim (Targeting the latest stable version)
- **Distribution Target:** LazyVim (Latest version)

## External Integrations
- **Core Binary:** `atelier-notes` (CLI tool)
    - The plugin acts as a wrapper and UI for this binary.

## Key Neovim Plugins & Libraries
- **Plugin Manager:** `lazy.nvim` (Assumed environment)
- **UI & Utilities:** `snacks.nvim`
    - **Pickers:** `snacks.picker` (Primary interface for selection and searching)
    - **General UI:** Used for inputs, notifications, and other widgets.
