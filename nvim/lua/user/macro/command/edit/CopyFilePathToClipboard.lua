--+=+-----------------------------------------------------+=+--
--+=+-: User.Macro.Command.Edit.CopyFilePathToClipboard :-+=+--
--+=+-----------------------------------------------------+=+--

--  TODO:   Find appropriate keymap

local nnoremap = require('user.util.keymap').nnoremap
local keymap = require('user.config.keymap.edit').copy.file_path
local cmd = 'CopyFilePathToClipboard'

nnoremap(
    keymap,
    '<cmd>'.. cmd .. '<CR>'
)

vim.api.nvim_create_user_command(
    cmd,
    function()
        vim.fn.setreg(
            '+',
            vim.fn.expand('%:p')
        )
    end,
    {}
)

-- vim: ts=4 sts=4 sw=4 et
