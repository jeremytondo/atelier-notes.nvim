local config = require("atelier-notes.config")

local M = {}

M.options = {}

--- Initialize the plugin with user options
--- @param opts table|nil
function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", config.defaults, opts or {})
end

--- Create a new note (stub)
function M.create_note()
	vim.notify("AtelierNotes: create_note called (stub)", vim.log.levels.INFO)
end

M.create_note()

return M
