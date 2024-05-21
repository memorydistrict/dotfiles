--+=+-------------------------------------------+=+--
--+=+-: User.Macro.Autocommand.ExpandVimEnter :-+=+--
--+=+-------------------------------------------+=+--

--  Adds further functionality to the `VimEnter` event
--  Opens additional panels to the UI, based on mapped configurations

--  TODO:   Map commands to `user.config.ui.startup`

--  ISSUE:  Line numbers generate in initialized Neotree panel

local openPanel = function(panel)
    vim.cmd(panel)
end

vim.api.nvim_create_autocmd(
    { 'VimEnter' },
    {
        desc = 'Add further functionality to the `VimEnter` event',
        group = vim.api.nvim_create_augroup(
            'ExpandVimEnter',
            { clear = true }
        ),
        callback = function()
            --openPanel('Neotree')
            --openPanel('Outline')
        end
    }
)

-- vim: ts=4 sts=4 sw=4 et
