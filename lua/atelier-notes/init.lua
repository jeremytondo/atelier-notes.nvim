local config = require("atelier-notes.config")
local core = require("atelier-notes.core")

local M = {}

M.options = vim.deepcopy(config.defaults)

--- Initialize the plugin with user options
--- @param opts table|nil
function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", config.defaults, opts or {})
end

--- Create a new note
function M.create_note()
    vim.ui.input({ prompt = M.options.ui.prompt_new }, function(input)
        if input then
            core.create_note(input, M.options)
        end
    end)
end

return M
