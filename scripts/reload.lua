-- scripts/reload.lua

-- Unload the plugin and its sub-modules
local package_name = "atelier-notes"

for module_name, _ in pairs(package.loaded) do
	if module_name:match("^" .. package_name) then
		package.loaded[module_name] = nil
	end
end

-- Clear any global command cache if necessary (optional, but good for commands)
-- vim.api.nvim_del_user_command("AtelierNotesNew") -- Uncomment if you need to reset commands

-- Re-require the module
local atelier = require("atelier-notes")

-- Setup with default config (or mock config)
atelier.setup({})

-- Run the function you are testing
vim.notify("Reloading Atelier Notes...", vim.log.levels.INFO)
