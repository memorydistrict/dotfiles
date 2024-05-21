--+=+--------------------------------------------+=+--
--+=+-: User.Macro.Command.View.ToggleTextWrap :-+=+--
--+=+--------------------------------------------+=+--

local state = nil

local nnoremap = require('user.util.keymap').nnoremap
local keymap = require('user.config.keymap.view').show.spell_check
local cmd = 'ToggleSpellCheck'

nnoremap(
    keymap,
    '<cmd>'.. cmd .. '<CR>'
)

vim.api.nvim_create_user_command(
    cmd,
    function()
        if (vim.opt_local.spell == false) then
            vim.opt_local.spell = true
            state = true
        else
            vim.opt_local.spell = false
            state = false
        end

        return state
    end,
    {}
)


-- vim: ts=4 sts=4 sw=4 et
