-- tests/check_require.lua
vim.opt.rtp:prepend(vim.fn.getcwd())

local status, err = pcall(require, "atelier-notes.core")
if status then
  print("Success: atelier-notes.core required.")
  os.exit(0)
else
  print("Failure: Could not require atelier-notes.core")
  print("Error: " .. tostring(err))
  os.exit(1)
end