# Product Guidelines - Atelier-Notes.nvim

## Design Principles

- **LazyVim Cohesion:** Always prioritize using utilities and plugins included in the LazyVim distribution (e.g., `snacks.nvim`). The plugin should feel like it was built specifically for LazyVim.
- **Minimalist & Invisible:** Stay out of the user's way. Use minimal UI, follow defaults strictly, and avoid intrusive elements.
- **Quiet by Default:** Be conservative with notifications. Only notify on errors or critical events to maintain a focused environment.

## Technical Standards

- **Modular Architecture:** Maintain a clear separation between the "Core" (logic for wrapping the `atelier-notes` CLI) and the "UI" (Neovim-specific glue, pickers, and commands).
- **Lazy Loading Optimized:** The project structure must support efficient lazy loading via `lazy.nvim`. Use autoloading patterns (placing logic in `lua/atelier-notes/`) so that the plugin is only loaded when its functionality is invoked.
- **Functional Logic:** Prefer functional patterns where appropriate, especially in the CLI wrapper, to ensure reliability and ease of testing.

## User Interface (UI)

- **Utility Integration:** Leverage `snacks.nvim` for UI components where it provides a superior or more "standard" LazyVim experience.
- **Consistency:** Follow the visual style and keybinding conventions established by the LazyVim ecosystem.
