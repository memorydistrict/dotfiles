--+=+-----------------------------------------------+=+--
--+=+-: User.Macro.Autocommand.VerticalHelpWindow :-+=+--
--+=+-----------------------------------------------+=+--

--  TODO:   Open help window beside

vim.api.nvim_create_autocmd(
    { 'FileType' },
    {
        group = vim.api.nvim_create_augroup(
            'VerticalHelpWindow',
            { clear = true }
        ),
        pattern = 'help',
        callback = function()
            vim.bo.bufhidden = 'unload'
            vim.cmd.wincmd('L')
            vim.cmd.wincmd('=')
        end,
    }
)

-- vim: ts=4 sts=4 sw=4 et
