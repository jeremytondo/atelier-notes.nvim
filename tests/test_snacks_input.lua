-- tests/test_snacks_input.lua
vim.opt.rtp:prepend(vim.fn.getcwd())
local atelier = require("atelier-notes")
local core = require("atelier-notes.core")

-- Mock core.create_note
core.create_note = function() end

-- Mock global Snacks
_G.Snacks = {
    input = function(opts, cb)
        cb("Snacks Title")
    end
}

-- Mock vim.ui.input (should NOT be called if Snacks exists)
local vim_input_called = false
vim.ui.input = function(opts, cb)
    vim_input_called = true
    cb("Vim Title")
end

-- Run
atelier.create_note()

if vim_input_called then
    print("Failure: vim.ui.input was called but Snacks exists")
    os.exit(1)
end

-- Now test fallback
_G.Snacks = nil
vim_input_called = false

atelier.create_note()

if not vim_input_called then
    print("Failure: vim.ui.input was NOT called when Snacks is missing")
    os.exit(1)
end

print("Success: Snacks integration works")
os.exit(0)
