# Spec: Note Creation Interface

## Overview
This track implements the foundational feature of the `atelier-notes.nvim` plugin: the ability to create a new note via the `atelier-notes` CLI from within Neovim.

## Requirements
- **CLI Integration:** The plugin must execute the command `atelier-notes new "<title>"` (or equivalent based on actual CLI API).
- **User Input:** Use `snacks.input` (or `vim.ui.input` as a fallback) to prompt the user for a note title.
- **Success/Error Handling:** Provide minimal feedback (notifications) only on failure, adhering to the "Quiet by Default" guideline.
- **Configuration:** Honor the `binary_path` setting from the user's configuration.

## User Flow
1. User executes the `:AtelierNotesCreate` command (or equivalent Lua call).
2. A prompt appears asking for the note title.
3. User enters the title and presses `<Enter>`.
4. The plugin executes the CLI command in the background.
5. If successful, no notification is shown (Quiet by Default). If it fails, a notification with the error message is displayed.
