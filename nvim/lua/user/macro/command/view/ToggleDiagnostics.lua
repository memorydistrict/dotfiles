--+=+------------------------------------------+=+--
--+=+-: User.Macro.Command.ToggleDiagnostics :-+=+--
--+=+------------------------------------------+=+--

local nnoremap = require('user.util.keymap').nnoremap
local keymap = require('user.config.keymap.view').show.diagnostics
local cmd = 'ToggleDiagnostics'

nnoremap(
    keymap,
    '<cmd>'.. cmd .. '<CR>'
)

vim.api.nvim_create_user_command(
    cmd,
    function()
        if vim.g.diagnostics_enabled == nil then
            vim.g.diagnostics_enabled = false
            vim.diagnostic.disable()
        elseif vim.g.diagnostics_enabled then
            vim.g.diagnostics_enabled = false
            vim.diagnostic.disabled()
        else
            vim.g.diagnostics_enabled = true
            vim.diagnostic.enable()
        end
    end,
    {}
)

-- vim: ts=4 sts=4 sw=4 et
