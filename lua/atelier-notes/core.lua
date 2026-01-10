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

--- Create a new note
--- @param title string The title of the note
--- @param opts table|nil Configuration options (must include binary_path)
--- @return string|nil The output or nil on failure
function M.create_note(title, opts)
    local binary = opts and opts.binary_path or "atelier-notes"
    return M.execute_command({binary, "create", title})
end

return M