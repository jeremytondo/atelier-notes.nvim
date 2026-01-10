-- tests/test_create_note.lua
vim.opt.rtp:prepend(vim.fn.getcwd())
local core = require("atelier-notes.core")

-- Mock execute_command
local last_args = nil
core.execute_command = function(args)
  last_args = args
  return "Output"
end

if not core.create_note then
  print("Failure: core.create_note is missing")
  os.exit(1)
end

-- Test execution
local title = "My Title"
local opts = { binary_path = "custom-bin" }
core.create_note(title, opts)

if last_args[1] ~= "custom-bin" or last_args[2] ~= "new" or last_args[3] ~= title then
   print("Failure: Args mismatch")
   print(vim.inspect(last_args))
   os.exit(1)
end

print("Success: create_note works")
os.exit(0)
