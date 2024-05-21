--+=+-------------------------------------+=+--
--+=+-: User.Macro.Autocommand.ViewText :-+=+--
--+=+-------------------------------------+=+--

--  TODO:   Make `vim.opt_local.spell` dependent on return value of `user.macro.command.view.ToggleSpellCheck`
--  TODO:   Make `vim.opt_local.wrap` dependent on return value of `user.macro.command.view.ToggleTextWrap`

--  Enable spell checking and text wrapping on specific filetypes listed in the pattern key

vim.api.nvim_create_autocmd(
    { 'FileType' }, 
    {
        desc = "Enable spell checking and text wrapping for specific filetypes",
        group = vim.api.nvim_create_augroup(
            'EditText',
            { clear = true }
        ),
        pattern = {
            'gitcommit',
            'markdown',
            'txt'
        },
        callback = function()
            vim.opt_local.wrap = true
            vim.opt_local.spell = true
        end,
    }
)

-- vim: ts=4 sts=4 sw=4 et
