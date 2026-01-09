# Neovim Plugin Blueprint: `atelier-notes.nvim`

## Overview
A lightweight Neovim plugin written in Lua to interact with the `atelier-notes` CLI.

## Repository Structure
The plugin will follow the standard Neovim plugin directory structure.

```text
atelier-notes.nvim/
├── lua/
│   └── atelier-notes/
│       ├── init.lua       # Core logic and public API
│       ├── config.lua     # Default configuration and validation
│       └── utils.lua      # Helper functions (e.g., executing CLI commands)
├── plugin/
│   └── atelier-notes.lua  # Command definitions (:AtelierNew, etc.)
├── README.md              # Installation instructions
└── LICENSE
```

## Core Features

### 1. Configuration (`setup`)
Users can configure the path to the binary and default behaviors.

```lua
-- lua/atelier-notes/config.lua
local M = {}

M.defaults = {
    -- Path to the executable. 
    -- Defaults to "atelier-notes" assuming it is in $PATH
    binary_path = "atelier-notes",
    
    -- UI customization
    ui = {
        -- Prompt text for vim.ui.input
        prompt_new = "New Note Title: ",
    }
}

return M
```

### 2. Create Note (`create_note`)
**Workflow:**
1.  Trigger: User runs `:AtelierNew` or calls `require("atelier-notes").create_note()`.
2.  Input: Plugin calls `vim.ui.input` (compatible with `dressing.nvim` for nice UI).
3.  Execution: Plugin constructs command `atelier-notes new "Input Title"`.
4.  Result: 
    *   Capture `stdout`.
    *   Strip whitespace/newlines.
    *   Run `vim.cmd("edit " .. path)`.

**Draft Code Logic:**
```lua
function M.create_note()
    vim.ui.input({ prompt = config.ui.prompt_new }, function(input)
        if input == nil or input == "" then
            return -- User cancelled
        end

        local cmd = string.format('%s new "%s"', config.binary_path, input)
        -- Execute command synchronously or asynchronously
        local output = vim.fn.system(cmd)
        
        if vim.v.shell_error ~= 0 then
            vim.notify("Error creating note: " .. output, vim.log.levels.ERROR)
            return
        end

        local path = vim.trim(output)
        vim.cmd("edit " .. path)
    end)
end
```

### 3. List Notes (`list_notes`) - *Future*
Integration with Telescope.nvim or fzf-lua would be ideal here.
*   Command: `atelier-notes list`
*   Action: Feed output into a picker.
*   Selection: Open selected file.

## Commands
defined in `plugin/atelier-notes.lua`

*   `:AtelierNew` -> maps to `create_note()`

## Installation (Example with lazy.nvim)

```lua
{
    "jeremytondo/atelier-notes.nvim",
    config = function()
        require("atelier-notes").setup({
            -- Optional config
        })
    end
}
```

