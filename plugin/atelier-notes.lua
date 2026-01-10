if vim.g.loaded_atelier_notes == 1 then
    return
end
vim.g.loaded_atelier_notes = 1

vim.api.nvim_create_user_command("AtelierNotesCreate", function()
    require("atelier-notes").create_note()
end, { desc = "Create a new note with atelier-notes" })
