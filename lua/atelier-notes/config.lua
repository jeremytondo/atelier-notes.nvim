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
