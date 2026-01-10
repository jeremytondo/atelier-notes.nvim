-- tests/test_init_create_note.lua
vim.opt.rtp:prepend(vim.fn.getcwd())
local atelier = require("atelier-notes")
local core = require("atelier-notes.core")

-- Mock core.create_note
local core_called = false
local core_title = nil
core.create_note = function(title, opts)
    core_called = true
    core_title = title
    return "Created"
end

-- Mock vim.ui.input
local input_called = false
local input_prompt = nil
vim.ui.input = function(opts, on_confirm)
    input_called = true
    input_prompt = opts.prompt
    on_confirm("User Title")
end

-- Run the function
atelier.create_note()

if not input_called then
    print("Failure: vim.ui.input was not called")
    os.exit(1)
end

if not core_called then
    print("Failure: core.create_note was not called")
    os.exit(1)
end

if core_title ~= "User Title" then
    print("Failure: Incorrect title passed to core")
    os.exit(1)
end

print("Success: init.create_note works")
os.exit(0)
