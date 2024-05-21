--+=+----------------------------+=+--
--+=+-: Plugin.IndentBlankline :-+=+--
--+=+----------------------------+=+--

return {
    {
        'lukas-reineke/indent-blankline.nvim',
        event = { 'BufEnter' },
        main = 'ibl',
        opts = {
            indent = {
                char = '│',
                tab_char = '│',
            },
            scope = { enabled = false },
            exclude = {
                filetypes = {
                    'help',
                    'lazy',
                    'mason',
                    'notify',
                    'oil',
                },
            },
        },
    },
}

--  vim: ts=4 sts=4 sw=4 et
