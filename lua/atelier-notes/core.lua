local M = {}

--- Execute a command and return the output
--- @param args table The command arguments (list of strings)
--- @return string|nil The stdout output or nil on failure
function M.execute_command(args)
  -- Use vim.system for executing commands
  local obj = vim.system(args, { text = true }):wait()
  if obj.code ~= 0 then
      return nil
  end
  return obj.stdout
end

return M