--+=+------------------------------------------+=+--
--+=+-: User.Macro.Autocommand.ResizeWindows :-+=+--
--+=+------------------------------------------+=+--

vim.api.nvim_create_autocmd(
    { 'VimResized' },
    {
        group = vim.api.nvim_create_augroup(
            'ResizeWindows',
            { clear = true }
        ),
        pattern = '*',
        command = 'wincmd =',
        desc = "Auto-resize windows on terminal buffer resize",
    }
)

-- vim: ts=4 sts=4 sw=4 et
