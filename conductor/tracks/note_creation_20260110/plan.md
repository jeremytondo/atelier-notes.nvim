# Plan: Note Creation Interface

## Phase 1: Foundation & CLI Wrapper [checkpoint: 3e826cf]
- [x] Task: Create `lua/atelier-notes/core.lua` to house CLI execution logic. [4515e11]
- [x] Task: Implement `core.execute_command(args)` using `vim.system` or `vim.fn.system`. [8bf8e01]
- [x] Task: Implement `core.create_note(title)` which builds and runs the specific creation command. [edf80fe]
- [x] Task: Conductor - User Manual Verification 'Phase 1: Foundation & CLI Wrapper' (Protocol in workflow.md)
- [ ] Task: Conductor - User Manual Verification 'Phase 1: Foundation & CLI Wrapper' (Protocol in workflow.md)

## Phase 2: UI Integration & Commands [checkpoint: eef832b]
- [x] Task: Implement `M.create_note()` in `lua/atelier-notes/init.lua` to prompt for input. [0903542]
- [x] Task: Use `snacks.input` for the title prompt, falling back to `vim.ui.input`. [c33d5a0]
- [x] Task: Bind the UI input to the `core.create_note` function. [c33d5a0]
- [x] Task: Define the `:AtelierNotesCreate` command in `plugin/atelier-notes.lua`. [3728aa0]
- [x] Task: Debug & Fix: Corrected CLI command to 'new' and added error reporting. [a74790d]
- [x] Task: Conductor - User Manual Verification 'Phase 2: UI Integration & Commands' (Protocol in workflow.md)
