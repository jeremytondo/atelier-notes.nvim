-- tests/test_execute_command.lua
vim.opt.rtp:prepend(vim.fn.getcwd())
local core = require("atelier-notes.core")

if not core.execute_command then
  print("Failure: core.execute_command is missing")
  os.exit(1)
end

-- Test execution
-- We assume execute_command returns stdout string or similar
local result = core.execute_command({"echo", "hello"})
-- trimming result just in case
if result and result:match("hello") then
  print("Success: execute_command works")
  os.exit(0)
else
  print("Failure: execute_command failed or did not return output")
  os.exit(1)
end
