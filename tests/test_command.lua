-- tests/test_command.lua
vim.opt.rtp:prepend(vim.fn.getcwd())
local atelier = require("atelier-notes")

-- Mock create_note
local create_note_called = false
atelier.create_note = function()
    create_note_called = true
end

-- Source the plugin file to register commands
vim.cmd("source plugin/atelier-notes.lua")

-- Check if command exists
if vim.fn.exists(":AtelierNotesCreate") ~= 2 then
    -- It might fail if we haven't updated the plugin file yet, which is expected
    print("Failure: Command :AtelierNotesCreate does not exist")
    os.exit(1)
end

-- Execute command
vim.cmd("AtelierNotesCreate")

if not create_note_called then
    print("Failure: Command did not call atelier.create_note")
    os.exit(1)
end

print("Success: Command works")
os.exit(0)
