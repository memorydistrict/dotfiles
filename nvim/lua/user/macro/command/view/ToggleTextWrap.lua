--+=+--------------------------------------------+=+--
--+=+-: User.Macro.Command.View.ToggleTextWrap :-+=+--
--+=+--------------------------------------------+=+--

local state = nil

local nnoremap = require('user.util.keymap').nnoremap
local keymap = require('user.config.keymap.view').text_wrapping
local cmd = 'ToggleTextWrap'

nnoremap(
    keymap,
    '<cmd>'.. cmd .. '<CR>'
)

vim.api.nvim_create_user_command(
    cmd,
    function()
        if (vim.opt_local.wrap == false) then
            vim.opt_local.wrap = true
            state = true
        else
            vim.opt_local.wrap = false
            state = false
        end
    end,
    {}
)

return state

-- vim: ts=4 sts=4 sw=4 et
