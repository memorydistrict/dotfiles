--+=+-------------------------------------+=+--
--+=+-: User.Macro.Command.ToggleESLint :-+=+--
--+=+-------------------------------------+=+--

--  TODO:   Find appropriate keymap

local nnoremap = require('user.util.keymap').nnoremap
local keymap = require('user.config.keymap.view').flip_windows
local cmd = 'ToggleESLint'

nnoremap(
    keymap,
    '<cmd>'.. cmd .. '<CR>'
)

vim.api.nvim_create_user_command(
    cmd,
    function()
        require('null-ls').toggle('eslint')
    end,
    {}
)

-- vim: ts=4 sts=4 sw=4 et
