--+=+--------------------------------------------+=+--
--+=+-: User.Macro.Autocommand.HighlightYanked :-+=+--
--+=+--------------------------------------------+=+--

--  Temporarily highlight selected text on yank

vim.api.nvim_create_autocmd(
    { 'TextYankPost' },
    {
        desc = "Highlight selection on yank",
        group = vim.api.nvim_create_augroup(
            'HighlightYanked',
            { clear = true }
        ),
        pattern = '*',
        callback = function()
            vim.highlight.on_yank(
                {
                    timeout = 200,
                    visual = true,
                }
            )
        end,
    }
)

-- vim: ts=4 sts=4 sw=4 et
