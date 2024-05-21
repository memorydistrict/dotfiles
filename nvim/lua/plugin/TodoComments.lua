--+=+-------------------------+=+--
--+=+-: Plugin.TodoComments :-+=+--
--+=+-------------------------+=+--

return {
    {
        'folke/todo-comments.nvim',
        event = { 'VimEnter' },
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
        opts = {
            signs = true
        }
    },
}

--  vim: ts=4 sts=4 sw=4 et
